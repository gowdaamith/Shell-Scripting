#!/bin/bash

log_file="app.log"
if [ -f "$log_file" ]; then 
  mv "$log_file" "app_$(date + %F).log"
  echo "log file rotated"
else
  echo " LOg file not found "
fi
