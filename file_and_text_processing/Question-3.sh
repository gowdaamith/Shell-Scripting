#!/bin/bash

# Print top 5 largest file in the current directory 


find . -maxdepth 1 -type f -printf '%s %p\n' | sort -nr | head -n 5 
