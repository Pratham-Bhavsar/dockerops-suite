#!/bin/bash

echo "===== DockerOps Suite: STOP ====="

# Check if container exists
if docker ps -a | grep -q mysql-db; then

    # Check if running
    if docker ps | grep -q mysql-db; then
        echo "Stopping MySQL container..."
        docker stop mysql-db > /dev/null
        echo "MySQL container stopped successfully."
    else
        echo "MySQL container is already stopped."
    fi

else
    echo "ERROR: mysql-db container does not exist."
    exit 1
fi

echo "================================"
