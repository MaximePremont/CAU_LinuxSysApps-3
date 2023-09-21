#!/bin/sh

# -> Author : 50231607 Maxime PREMONT

# Function that helps to exit with an error message and status
exit_error() {
  echo "$1"
  exit 1
}

# Function to check input type and value
check_input() {
  if [ $(($1)) != $1 ]
    then
      exit_error "Invalid input"
    fi
  if [ "$1" -le 0 ]
    then
      exit_error "Input must be greater than 0"
    fi
}

# Check number of parameters
if [ $# -ne 2 ]
then
  exit_error "Invalid input"
fi

# Check inputs
check_input $1
check_input $2

# Print multiplication table
for i in $(seq 1 $1)
  do
    for j in $(seq 1 $2)
      do
        # Print calcul and result
        echo -n "$i*$j=$(($i*$j))\t"
      done
      # Print new line
      echo ""
  done