#! /usr/bin/zsh

MY_NAME='Leung'
CURRENT_YEAR=$(date +%Y)
GREETING='Hello Friend'

echo "I am $MY_NAME , Now is $CURRENT_YEAR \n $GREETING"

# Array and array work
FRUIT=(apple banana orange)
echo "Now I am going to sell Fruit Fruit type number is : ${#FRUIT[@]}"
