#!/bin/bash
while [ true ] ;do
used=`free -m |awk 'NR==2 {print $4}'`

echo $used

if [ $used -lt 1000 ] && [ $used -gt 800 ]; then
echo "Free memory is below 1000MB. Possible memory leak!!!" # | /bin/mail -s "HIGH MEMORY ALERT!!!" user@mydomain.com


fi
sleep 5
done
