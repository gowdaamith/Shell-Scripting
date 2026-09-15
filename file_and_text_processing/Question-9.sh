#!/bin/bash

# Extract the email addresses from the text file using grep 

read -p "Enter the path where the file containing the information exits" file

if [ ! -f "$file" ];then
    echo "Enter the correct path of the file"
    echo "now entered file path is :  $file"
fi

grep -Eio '[[:alnum:]._%+-]+@[[:alnum:].-]+\.[[:alpha:]]{2,}' "$file" | sort -fu


