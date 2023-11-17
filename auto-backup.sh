#!/bin/bash
# Create backups of your critical files and directories with this script, which appends a timestamp to the backup file:
# --------------------------
SOURCE="/home/loki/Projects/"
DESTINATION="/home/loki/backup"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
tar -czf "${DESTINATION}backup_${TIMESTAMP}.tar.gz" --absolute-names "${SOURCE}"
