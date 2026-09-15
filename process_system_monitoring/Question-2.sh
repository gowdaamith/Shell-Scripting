#!/bin/bash

# Top five cpu consuming processes

echo "easy" 

ps aux --sort=-%cpu --no-headers | head -n 6

echo "production" 

ps -eo pid,user,comm,%cpu,%mem --no-headers | awk '{print $4,$1,$2,$3}' | sort -nr | head -n 5
