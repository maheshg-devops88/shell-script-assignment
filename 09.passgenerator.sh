#!/bin/bash

user_id=$(id -u)


if [ $user_id -ne 0 ]; then
      echo "Please run the Script with sudo access" 
      exit 1
fi

if [ $# -eq 0 ]; then
   echo "Please provide the Length to generate the password"
   exit 1
fi

length=$1

# Define character sets
upper="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
lower="abcdefghijklmnopqrstuvwxyz"
digits="0123456789"
special="!@#$%^&*()-_=+[]{}|;:,.<>?/"

all="$upper$lower$digits$special"

password=""

password+=$(echo "$upper" | fold -w1 | shuf | head -n1)
password+=$(echo "$lower" | fold -w1 | shuf | head -n1)
password+=$(echo "$digits" | fold -w1 | shuf | head -n1)
password+=$(echo "$special" | fold -w1 | shuf | head -n1)


remaining=$((length-4))

if [ $remaining -gt 0 ]; then
   
   password+=$(echo "$all" | fold -w1 | shuf | head -n $remaining | tr -d '\n')

fi 

echo "Generate Password: $password"