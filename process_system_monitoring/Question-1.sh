#!/bin/bash

# Write a script to check if a  given process is running, if not , start it  

SERVICE_NAME=$1
if systemctl is-active --quiet "$SERVICE_NAME" 
then 
    echo "$SERVICE_NAME is runing "
else
    echo "$SERVICE_NAME is not running"
    echo "Starting the service $SERVICE_NAME"
    sudo systemctl start "$SERVICE_NAME"
fi

