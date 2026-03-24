#!/bin/bash

echo "Starting deployment"
git pull || { echo " Git pull failed "; exit 1;}
docker build -t myapp . || { echo  "build failed " ;exit 1;}

docker stop myapp 2>/dev/null
docker rm myapp 2>/dev/null

docker run -d --name myapp -p 80:80 myapp || { echo "Run failed "; exit 1;}
echo " Deployment successfull"

