#!/bin/bash
name="amith gowda"
echo "hello $name"
read -p "enter your age:" age
echo "your age is $age"
echo "Current User : $(whoami)"
echo "Current directory $(pwd)"
echo "Files: "
ls
read -p "enter the number you want to check "  num
if [ $num -gt 10 ]; then
  echo "greaterr than 10"
else
  echo " less or equal to 10"
fi
echo "for loop startging"
for i in range {1..5}
do 
  echo "number $i"
done
echo "enter the value of the i"
read i 
while [ $i -le 5 ]
do 
  echo $i
  ((i++))
done 
echo " checking wheather the file exits or not "
if [ -f "test.txt" ]; then 
  echo "file exists"
else
  echo " file not found"
fi
count=$(ls | wc -l)
echo " Total files : $count "
echo "Disk usage is : "
df -h
echo "Running Processes are "
ps aux | grep bash 
