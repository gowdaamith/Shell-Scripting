#!/bin/bash
echo "Press 1 to show date"
echo "Press 2 to list files"
echo "Press 3 to show the current directory "
read choice

case $choice in
  1) date ;;
  2) ls ;;
  3) pwd ;;
  *) echo "Invalid choice" ;;
esac

