#!/bin/bash


# automate copying a file to multiple remote servers using scp in a loop

read -p "remote user name" username
read -p "destination foler" dest_path
read -p "server list file path" server_path
read -p "file to copy" file_name

if [ ! -e "$server_path" ] || [ ! -f "$  ;then
    echo "Enter the correct path of the server file"
    exit 1
fi
if [ -e "$1
