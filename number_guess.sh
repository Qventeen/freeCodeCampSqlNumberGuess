#!/bin/bash

#introduce db connect variable
PSQL="psql -X -U freecodecamp -d number_guess -t --no-align -c"

LOGIN() {
  #take username from input
  echo -e "\nEnter your username:"
  
  read USER_NAME

  #select user info
  USER_INFO=$($PSQL "select user_id, name, count(game_id) as games_played, coalesce(min(number_of_steps), 0) as best_game from users left join games using(user_id) where name = '$USER_NAME' group by user_id")
  
  #make step depend on result
  if [[ -z $USER_INFO ]]
  then
    INSERT_NEW_USER_RESULT=$($PSQL "insert into users(name) values('$USER_NAME')")
    echo -e "\nWelcome, $USER_NAME! It looks like this is your first time here."
  else
    echo $USER_INFO | while IFS="|" read USER_ID NAME GAMES_PLAYED BEST_GAME
    do
      echo -e "\nWelcome back, $NAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."

      return $USER_ID
    done
  fi
}

GAME() {
  #get random number
  RANDOM_NUMBER=$((1 + $RANDOM % 1000))
  
  echo -e "\nGuess the secret number between 1 and 1000:"
  
  GUESS_NUMBER=0
  COUNTER=0
  while [[ $GUESS_NUMBER != $RANDOM_NUMBER ]]
  do
    read GUESS_NUMBER
    if [[ ! $GUESS_NUMBER =~ ^[0-9]+$ ]]
    then
      echo -e "\nThat is not an integer, guess again:"
    else
      if [[ $GUESS_NUMBER -gt $RANDOM_NUMBER ]]
      then
        echo -e "\nIt's higher than that, guess again:"
      elif [[ $GUESS_NUMBER -lt $RANDOM_NUMBER ]]
      then
        echo -e "\nIt's lower than that, guess again:"
      fi
    fi

    COUNTER=$(($COUNTER + 1))

  done

  echo -e "\nYou guessed it in $COUNTER tries. The secret number was $RANDOM_NUMBER. Nice job!"
  
  GAME_INSERT_RESULT=$($PSQL "insert into games(user_id, number_of_steps) values($1, $COUNTER)")
}
LOGIN

USER_ID="$?"
GAME $USER_ID
