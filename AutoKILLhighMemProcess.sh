#!/bin/bash
ps aux --sort=-%mem | awk 'NR==2 {print $2,$4}' | while read -r pid mem
do
  if (( $(echo "$mem > 50.0" | bc -l) )); then
    echo "Killing the process $pid using $mem% memory"
    kill -9 " $pid"
  fi
done

