#!/bin/bash

# check the dns resolution time for the given domain


domain_name=$1
if [ -z "$domain_name" ] 
then 
    echo " Usage $0 <domain_name>"
    exit 1
fi
echo "Checking DNS resolution time" 

if ! command -v dig > /dev/null 2>&1; then
    echo "Error: dig is not installed"
    exit 1
fi

result=$(dig "$domain_name" | awk '/Query time:/ {print$4}')
if [ -n "$result" ]; then
    echo "DNS resolution time: ${result} ms"
else
    echo "DNS resolution failed for $domain_name" 
fi 
