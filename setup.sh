#!/bin/bash

echo "===== DockerOps Suite Setup ====="

echo "Creating Docker network..."
docker network create dockerops-network > /dev/null 2>&1

echo "Creating Docker volume..."
docker volume create mysql-data > /dev/null 2>&1

echo "Starting MySQL container..."

docker run -d \
  --name mysql-db \
  --network dockerops-network \
  -e MYSQL_ROOT_PASSWORD=root123 \
  -v mysql-data:/var/lib/mysql \
  -p 3307:3306 \
  mysql:8 > /dev/null 2>&1

echo "Infrastructure Setup completed!"

echo "MySQL container is running on port 3306"
