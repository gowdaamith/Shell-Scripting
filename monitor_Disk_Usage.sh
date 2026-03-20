#!/bin/bash
threshold=80
usage=$(df -h / | awk 'i NR==2 {print $5}' | sed 's/%//')

# awk [option] 'pattern {action}' file

if [ $usage -gt $threshold ]; then
  echo "Disk usage is above $threshold%!"
else
  echo " Disk usage is normal"
fi



