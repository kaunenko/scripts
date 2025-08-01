#!/bin/bash

# ========== SETTINGS ==========

# Source directory to back up
SOURCE="/home/your_user/data"

# Destination path (can be local or remote)
DEST="/mnt/backup/data"                 # Local
# DEST="user@remote:/backup/data"       # For remote server via SSH

# Log file
LOG="/var/log/backup_rsync.log"

# Date format: YYYY-MM-DD_HH-MM
DATE=$(date +"%Y-%m-%d_%H-%M")

# Final destination path (useful for timestamped backups)
DEST_FINAL="${DEST}_${DATE}"

# ========== BACKUP PROCESS ==========

echo "=== Backup started at $DATE ===" >> "$LOG"

rsync -avz --delete --progress \
    "$SOURCE/" "$DEST_FINAL" >> "$LOG" 2>&1

# ========== FINISH ==========

if [ $? -eq 0 ]; then
    echo "Backup completed successfully at $DATE" >> "$LOG"
else
    echo "Backup failed at $DATE" >> "$LOG"
fi
echo "" >> "$LOG"

