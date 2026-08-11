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
        if [ -n "$filetype" ]; then
             
              echo "please find the file $NAME exists in path $filetype"
      else
              echo "File name $NAME does not exists"
        fi

    done

for NAME in $@ ; do
       dirtype=$(find / -type d -name $NAME)
       if [ -n "$dirtype" ]; then
                  echo "Please find the Dir $NAME exists in path $dirtype 
                  cd $dirtype
                  echo "Please find the list of files in dir $dirtype: $(ls -ltr $dirtype)
            else
                    echo "Dir $NAME does not exists"
               fi
done
    