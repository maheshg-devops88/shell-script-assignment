#!/bin/bash

user_id=$(id -u)


if [ $user_id -ne 0 ]; then
      echo "Please run the Script with sudo access" 
      exit 1
fi

if [ $# -eq 0 ]; then
   echo "Please provide the number to check if it prime or not"
   exit 1
fi

for NUM in $@; do
   
     if [ $NUM -lt 2 ]; then
        echo "$NUM is not prime"
        continue
     fi
 
     IS_PRIME=1

   for ((i=2; i*i<=$NUM ;i++)); do
       
       if (( $NUM % i == 0 )); then 
           IS_PRIME=0
           break
       fi
   done

    if [ "$IS_PRIME" -eq 0 ]; then
       
       echo "$NUM is not prime" 
      else
       echo "$NUM is prime"
    fi

done

