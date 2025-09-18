#!/bin/bash
# Script Name: backup_files.sh
# Purpose: Create a compressed tar backup of a specified directory.

# ==== Configuration ====
# Change this to the folder you want to back up
SOURCE_DIR="/path/to/directory"

# ==== Script ====
BACKUP_FILE="backup_$(date +%F).tar.gz"

echo "Creating backup of $SOURCE_DIR..."
if tar -czf "$BACKUP_FILE" "$SOURCE_DIR"; then
    echo "Backup created successfully: $BACKUP_FILE"
else
    echo "Error: Failed to create backup."
    exit 1
fi

