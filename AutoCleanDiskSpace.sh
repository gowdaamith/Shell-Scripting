#!/bin/bash

threshold=80
usage=$(df / | awk 'NR==2 {print $5 }'| sed 's/%//')
if [ "$usage" -gt "$threshold" ]; then
  echo "Cleaning temp files"
  rm -rf /tmp/*
else
  echo "Disk usage is under control"
fi
