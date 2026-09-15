#!/bin/bash


# extract the ip address of the current machine (excluding the loopback)


ip=$(hostname -I | awk '{print $1}')
echo "current macchine ip address sis : $ip "


ip2=$(ip -4  addr show scope global| awk '/inet/ {print $2}' | cut -d/ -f1 | head -n 1)
echo "Current machine IP: $ip2"

