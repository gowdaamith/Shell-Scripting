#!/bin/bash
freeram=$(free -h)
echo "free memory is $freeram"
free -h | awk 'NR==2 {print $4}'


