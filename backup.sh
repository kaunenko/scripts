#!/bin/bash

#Creae date in format YYYYMMDD
DATE=$(date +%Y%m%d)

#Direcrtory for backup
BUCKUP_DIR="/backup"
BACKUP_FILE="$BUCKUP_DIR/etc-$DATE.tar.gz"

#Create arhive
tar -czf "$BACKUP_FILE" /etc

#Delliting backup older 7 days
#find "$BUCKUP_DIR" -type f -name "etc-*.tar.gz" -mtime +7 -exec rm -f {} \;
