#!/bin/bash

#introduce db connect variable
PSQL="psql -X -U freecodecamp -d number_guess -t --no-align -c"

LOGIN() {
  #take username from input
  echo -e "\nEnter your username:"
  
  read USER_NAME

  #select user info
  USER_INFO=$($PSQL "select user_id, name, count(game_id) as games_played, max(number_of_steps) as best_game from users left join games using(user_id) where name = '$USER_NAME' group by user_id")
   
  #make step depend on result
  if [[ -z $USER_INFO ]]
  then
    INSERT_NEW_USER_RESULT=$($PSQL "insert into users(name) values('$USER_NAME')")
    echo -e "\nWelcome, $USER_NAME! It looks like this is your first time here."
  fi
}

LOGIN
