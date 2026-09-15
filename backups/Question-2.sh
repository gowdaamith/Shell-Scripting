#!/bin/bash


# delete the backupfiles older than 7 days from a backup folder 

backup_dir="$HOME/backups"



if [ !  -d "$backup_dir" ];
then
    echo "Error: Backup directory doesn't exists: $backup_dir"
    exit 1
fi

echo "Deleting files older than  7 days"
find "$backup_dir" -type f -name "*.tar.gz" -mtime +7 -print -delete
echo "Old backup files deleted successfully"


