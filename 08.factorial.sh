#!/bin/bash

user_id=$(id -u)


if [ $user_id -ne 0 ]; then
      echo "Please run the Script with sudo access" 
      exit 1
fi

if [ $# -eq 0 ]; then
   echo "Please provide the number to provide the factorial number"
fi

n=$1
fact=1

for $((i=1; i<=$n; i++)); do

   fact=$(($fact * i))

done

echo "factorial number for $n is $fact"