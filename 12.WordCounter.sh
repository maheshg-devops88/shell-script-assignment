#!/bin/bash

user_id=$(id -u)


if [ $user_id -ne 0 ]; then
      echo "Please run the Script with sudo access" 
      exit 1
fi

if [ $# -eq 0 ]; then
   echo "Please provide the file name to check no of repeated words"
   exit 1
fi

file=$1

echo "Top five most repeated words"

tr '[:upper:]' '[:lower:]' < "$file" | tr -cs '[:alnum:]' '\n' | sort | uniq -c | sort -nr | head -5