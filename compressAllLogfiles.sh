#!/bin/bash
tar -czf logs_backup.tar.gz /var/log/*.log
echo "Logs compressed"
