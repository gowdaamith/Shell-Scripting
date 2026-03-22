#!/bin/bash
server=("google.com" "github.com" "amazon.com")
for server in "${server[@]}"
do 
  ping -c 1 $server > /dev/null
  if [ $? -eq 0 ]; then
    echo "$server is up "
  else 
    echo "$server is DOWN"
  fi
done


