#!/bin/bash

user_id=$(id -u)

if [ $user_id -ne 0 ]; then
      echo "Please run the Script with sudo access" 
fi

if [ -f $1 ]; then
    echo "File name $1 exists"
  else
    echo "File name does not exists"
fi
    