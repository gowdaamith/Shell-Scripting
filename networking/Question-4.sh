#!/bin/bash

# ping all the list of servers in the file and report which are down 


read -p "Enter the path of the file that contain the server list " path

if [ ! -e "$path" ];
then 
    echo "the path doesn't exits  enter a correct path "
    echo "the entered path is $path"
    exit 1
fi

echo "checking the server reachability "
echo "================================="

while IFS= read -r server; do 
    if [ -z "$server" ]; 
        continue
    fi
    if ping -c 1 -W 2 "$server" > /dev/null 2>&1; then
	    echo " UP : $server"
    else
        echo "DOWN : $server"
    fi
done < "$file"


echo "-------------------------------"
echo "Ping check completed."
