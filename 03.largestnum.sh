#!/bin/bash

user_id=$(id -u)


if [ $user_id -ne 0 ]; then
      echo "Please run the Script with sudo access" 
      exit 1
fi

if [ $# -eq 0 ]; then
   echo "Please provide the numbers to check the largest number"
   exit 1
fi

max=0

for NUM in $@; do
    if [ $NUM -gt $max ]; then 
        max=$NUM
    fi 
done
echo "largest number is $max"