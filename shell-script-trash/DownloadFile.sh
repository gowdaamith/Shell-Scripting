#!/bin/bash

echo " enter the path of the file you want to downlaod:"
read -r  url
wget "$url"  -O download_file.zip

