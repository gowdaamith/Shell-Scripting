#!/bin/bash
src="/home/user/data"
dest="/home/user/backup_(date+%F).tar.gz"

tar -czf $dest $src
echo "Backup created at $dest"


find /var/log -type f -mtime +7 -exec  rm -f {} \;
echo " Old logs deleted"


#find <path> <condition> <actions>


