#!/bin/bash

#introduce db connect variable
PSQL="psql -X -U freecodecamp -d number_guess -t --no-align -c"

LOGIN() {
  #take username from input
  echo -e "\nEnter your username:"
  read USER_NAME

}

LOGIN
