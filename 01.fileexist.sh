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
    
for NAME in $@ ; do
        filetype=$(find / -type f -name $NAME)
        if [ -n $filetype ]; then
              echo "File name $NAME does not exists"
      else
              echo "please find the file $NAME exists in path $filetype"
        fi
    done


        
            #    if [ -d $NAME ];
            #       $filetype=$(find / -type d -name $NAME)
            #       echo "Please find the Dir $Name exists in path $filetype 
            #       cd $filetype
            #       echo "Please find the list of files in dir $filetype: $(ls -ltr $filetype)
            #    fi

    