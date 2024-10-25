#!/bin/bash

SOURCE_DIR="/home/ritucs/source"
BACKUP_DIR="/home/ritucs/backup"
TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)
BACKUP_FILE="$BACKUP_DIR/backup_$TIMESTAMP.tar.gz"

tar -czf "$BACKUP_FILE" "$SOURCE_DIR"
echo "Backup completed. File Saved to $BACKUP_FILE"

