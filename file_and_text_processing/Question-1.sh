#!/bin/bash
##1.Write a script that counts how many .log files exist in a directory.

echo "easy"

count=$(ls *.log 2>/dev/null | wc -l)
echo "the number of the log file is $count"

echo "hard"

read -p "enter the path of the directory: " dir 
if [ ! -d "$dir" ]; then
    echo "Directory does not exits"
    exit 1
fi

count=$(find "$dir" -maxdepth 1 -type f -name "*.log" | wc -l)
echo "Number of .log files: $count"


