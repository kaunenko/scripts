#!/bin/bash

#Varriable loge name
LOG_FILE="access.log"

#-----------------------
echo " Top 10 ip:"
awk '{print $1}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -10

#------------------------
echo -e "\n Status HTTP:"
awk '{print $9}' "$LOG_FILE" | sort | uniq -c | sort -nr

#------------------------------
echo -e "\n Top 10 URL-requests:"
awk -F\" '{print $2}' "$LOG_FILE" | awk '{print $2}' | sort | uniq -c | sort -nr | head -10
