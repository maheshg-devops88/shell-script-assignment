#!/bin/bash

user_id=$(id -u)


if [ $user_id -ne 0 ]; then
      echo "Please run the Script with sudo access" 
      exit 1
fi

if [ $# -eq 0 ]; then
   echo "Please provide the number to calculate Fibonacci Series"
   exit 1
fi

n=$1

a=0
b=1

for (i=0; i<$n; i++); do 
    echo -n "$a "
    c=$((a+b))

    a=$b
    b=$c
done 

