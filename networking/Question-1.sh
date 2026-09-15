#!/bin/bash

# Check whether the remote host is reachable and print its status

host=$1

if [ -z "$host" ];
then 
    echo "Usage $0 <enter the hostname or IP>"
    exit 1
elif ping -c 3 -W 2 "$host" > /dev/null 2>&1; then
    echo "Status:  $host is reachable"
else
    echo "Status: $host is not reachable"
fi


    
