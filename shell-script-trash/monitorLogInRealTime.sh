#!/bin/bash
tail -f /var/log/syslog | while read line
do 
  if echo "$line" | grep -i "error"; then
    echo " Error found: $line"
  fi
done

