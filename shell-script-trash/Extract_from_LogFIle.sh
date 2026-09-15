grep -i "error" /var/log/syslog > error.log
echo "Error saved in the error.log"
cat error.log
