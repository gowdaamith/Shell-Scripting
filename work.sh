#!/bin/bash

command="ping -c 1 google.com"
until $command 
do
  echo " Retrying"
  sleep 2
done 

echo "command successful executeed "

