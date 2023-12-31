#!/bin/bash

#introduce db connect variable
PSQL="psql -X -U freecodecamp -d number_guess -t --no-align -c"

LOGIN() {
  #take username from input
  echo -e "\nEnter your username:"
  
  read USER_NAME

  #select user info
  USER_INFO=$($PSQL "select name, count(game_id) as games_played, min(number_of_steps) as best_game from users left join games using(user_id) where name = '$USER_NAME' group by user_id")
  
  #make step depend on result
  if [[ -z $USER_INFO ]]
  then
    INSERT_NEW_USER_RESULT=$($PSQL "insert into users(name) values('$USER_NAME')")
    echo -e "\nWelcome, $USER_NAME! It looks like this is your first time here."
  else
    echo $USER_INFO | while IFS="|" read NAME GAMES_PLAYED BEST_GAME
    do
      echo -e "\nWelcome back, $NAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
    done
  fi
}

GAME() {
  #get random number
  SECRET_NUMBER=$((1 + $RANDOM % 1000))
  
  echo -e "\nGuess the secret number between 1 and 1000:"
  
  GUESS_NUMBER=0
  STEP_COUNTER=0
  while [[ $GUESS_NUMBER != $SECRET_NUMBER ]]
  do
    read GUESS_NUMBER
    if [[ ! $GUESS_NUMBER =~ ^[0-9]+$ ]]
    then
      echo -e "\nThat is not an integer, guess again:"
    else
      if [[ $GUESS_NUMBER -gt $SECRET_NUMBER ]]
      then
        echo -e "\nIt's higher than that, guess again:"
      elif [[ $GUESS_NUMBER -lt $SECRET_NUMBER ]]
      then
        echo -e "\nIt's lower than that, guess again:"
      fi
    fi

    ((STEP_COUNTER++))

  done

  echo -e "\nYou guessed it in $STEP_COUNTER tries. The secret number was $SECRET_NUMBER. Nice job!"
  
  USER_ID=$($PSQL "select user_id from users where name='$USER_NAME'")
  
  GAME_INSERT_RESULT=$($PSQL "insert into games(user_id, number_of_steps) values($USER_ID, $STEP_COUNTER)")
}

LOGIN
GAME
