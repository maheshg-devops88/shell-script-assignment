#!/bin/bash

user_id=$(id -u)

if [ $user_id -ne 0 ]; then
      echo "Please run the Script with sudo access" 
      exit 1
fi

if [ $# -eq 0 ]; then
   echo "Please provide the file name or directory to check if exists"
   exit 1
fi


if [ -f $1 ]; then
    echo "File name $1 exists"
  else
    echo "File name does not exists"
fi
    