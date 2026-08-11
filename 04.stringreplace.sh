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
      paths=$(find / -name "$NAME")
      if [ -n "$paths" ]; then
           for path in $paths; do
             if [ -f "$path" ];then
                echo "This is File in path : $path"
                sed -i "s/FOO/BAR/g" "$path"
             elif [ -d "$path" ]; then
                echo "Please find the Dir $NAME exists in path $path"
                echo "Please find the list of files in dir:"
                ls -ltr "$path"
              fi
          done
      else
            echo "$NAME does not exist"
      
      fi
done