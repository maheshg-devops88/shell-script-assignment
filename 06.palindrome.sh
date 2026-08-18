#!/bin/bash

#!/bin/bash

user_id=$(id -u)


if [ $user_id -ne 0 ]; then
      echo "Please run the Script with sudo access" 
      exit 1
fi

if [ $# -eq 0 ]; then
   echo "Please provide the number or word to check if it palindrome or not"
   exit 1
fi

reverse=""

for NAME in $@ ; do
    
    reverse=$(echo $NAME | rev )
  
    if [ "$NAME" == "$reverse" ]; then
      
         echo "$NAME is Palindrome" 

     else

        echo "$NAME is not Palindrome"
      
    fi 

done