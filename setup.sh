#!/bin/bash

echo "===== DockerOps Suite Setup ====="

echo "Creating Docker network..."
docker network create dockerops-network > /dev/null 2>&1

echo "Creating Docker volume..."
docker volume create mysql-data > /dev/null 2>&1

echo "Infrastructure Setup completed!"
