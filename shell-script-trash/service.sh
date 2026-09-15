#!/bin/bash
read -p "enter the service:"  service
if systemctl is-active --quiet $service; then
  echo "$service is running"
else
  echo "restarting the service"
  sudo systemctl start $service
  if systemctl is-active --quiet $service; then 
    echo " the $service is running "
  else
    echo "$service is not running "
  fi
fi

