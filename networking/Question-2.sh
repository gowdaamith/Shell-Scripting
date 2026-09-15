#!/bin/bash

# Check if a website returns HTTP 200 using curl


url=$1
if [ -z "$url" ]; 
then
    echo "Usage: $0 <URL>"
    exit 1
else
    status_code=$(curl -s -o /dev/null -w "%{http_code}" "$url" )
    if [ "$status_code" -eq 200 ];
    then 
        echo "Website is uP and the status code is : $status_code "
    else
	echo "Website is down and the status code is: $status_code"
    fi
fi
