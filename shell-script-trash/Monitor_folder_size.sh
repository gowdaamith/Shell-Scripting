#!/bin/bash

read -p  "enter the folder of which you want to see the size" folder
size=$(du -sh $folder | awk '{print $1}')
echo "the folder size is $size"

