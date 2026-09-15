#!/bin/bash
echo "enter the website path you want to check connectivity"
read url
ping -c 1  $url >/dev/null
if [ $? -eq 0 ]; then 
  echo " Internet is running"
else
  echo " NO internet is not running"
fi

