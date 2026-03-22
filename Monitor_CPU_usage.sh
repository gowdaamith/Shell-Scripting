#!/bin/bash
threshold=80
cpu=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}' | cut -d  . -f1)
if [ $cpu -gt $threshold ]; then 
  echo " High CPU USAGE: $cpu %"
else
  echo "CPU is normal: $cpu %"
fi
