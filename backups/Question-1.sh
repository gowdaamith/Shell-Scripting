#!/bin/bash


# backup a directory into a timestamped .tar.gz file

source_dir=$1
backup_dir="$HOME/backups"

if [ -z  "$source_dir" ]; 
then
	echo "Usage $0 <source_dir_path>"
        exit 1
fi

mkdir -p "$backup_dir"

if [ ! -d "$source_dir" ]; 
then 
    echo "Error : Directory "$source_dir" doesn't exits"
    exit 1
fi

timestamp=$(date +"%Y-%m-%d_%H-%M-%S")

dir_name=$(basename "$source_dir")

backup_file="${backup_dir}/${dir_name}_${timestamp}.tar.gz"
tar -cvzf "$backup_file" -C "$(dirname "$source_dir")" "$dir_name"

if [ $? -eq 0 ]; 
then
    echo "Backup successfull!"
    echo "Backup file: $backup_file"
else
    echo "Backup failed!"
    exit 1
fi
