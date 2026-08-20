#!/bin/bash

user_id=$(id -u)


if [ $user_id -ne 0 ]; then
      echo "Please run the Script with sudo access" 
      exit 1
fi

if [ $# -eq 0 ]; then
   echo "Please provide the number to create pyramid of stars"
   exit 1
fi

num=$1

for (i=1; i<=$num; i++); then

    spaces=(($num-1))
    stars=((2*i-1))
    printf "%${spaces}s" ""
    printf "%${stars}s\n" "" | tr ' ' '*'

done