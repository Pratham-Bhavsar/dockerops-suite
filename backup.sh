#!/bin/bash

echo "===== DockerOps Suite Backup ====="

# Check if container is running
if ! docker ps | grep -q mysql-db; then
    echo "ERROR: mysql-db container is not running"
    exit 1
fi

# Create backup folder if not exists
mkdir -p backups

# Timestamp
DATE=$(date +%F-%H-%M-%S)

echo "Creating MySQL dump..."

docker exec mysql-db mysqldump -uroot -proot123 --all-databases > backups/mysql-$DATE.sql

if [ $? -eq 0 ]; then
    echo "Backup successful!"
    echo "Saved at: backups/mysql-$DATE.sql"
else
    echo "Backup failed!"
fi
