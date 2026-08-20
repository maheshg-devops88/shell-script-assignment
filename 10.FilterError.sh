#!/bin/bash

user_id=$(id -u)


if [ $user_id -ne 0 ]; then
      echo "Please run the Script with sudo access" 
      exit 1
fi

if [ $# -eq 0 ]; then
   echo "Please provide the Input file to check the errors"
   exit 1
fi

INPUT_FILE=$1
OUTPUT_FILE="error_lines.csv"

{
      echo "Saving ERROR to new File"
      grep -i "stopped" "$INPUT_FILE"

} > "$OUTPUT_FILE"

echo "Filtered error saved to file: $OUTPUT_FILE"
