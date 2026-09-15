#!/bin/bash

# Top 5 memory consuming processes 


ps -aux --sort=-%mem --no-headers | head -n 5 | awk '{ print $1,$2,$3,$4}'
