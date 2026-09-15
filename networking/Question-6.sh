#!/bin/bash

# to test connectivity to a specific port to a remote server


host=$1
port=$2

if [ -z "$host" ] && [ -z "$port" ]; 
then
    echo "Usage $0<host_name or IP > <port_number>"
    exit 1
fi

if ! command -v nc > /dev/null 2>&1; then
    echo "Error: nc is required . Please install netcat"
    exit 1
fi

echo "checking connectivity to $host on port $port"

if nc -z -w 3 "$host" "$port" > /dev/null 2>&1; then
    echo "STATUS: Port $port on $host is OPEN"
else
    echo "STATUS: Port $port on $host is closed or unreachable"
fi


