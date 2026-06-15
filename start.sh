#!/bin/bash

echo "===== DockerOps Suite: START ====="

# Check if container exists
if docker ps -a | grep -q mysql-db; then

    # Check if running
    if docker ps | grep -q mysql-db; then
        echo "MySQL container is already running."
    else
        echo "Starting MySQL container..."
        docker start mysql-db > /dev/null
        echo "MySQL container started successfully."
    fi

else
    echo "ERROR: mysql-db container does not exist. Run setup.sh first."
    exit 1
fi

echo "=================================="
