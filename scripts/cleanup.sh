#!/bin/bash

echo "===== DockerOps Suite: CLEANUP ====="

# Stop container if running
if docker ps | grep -q mysql-db; then
    echo "Stopping MySQL container..."
    docker stop mysql-db > /dev/null
fi

# Remove container if exists
if docker ps -a | grep -q mysql-db; then
    echo "Removing MySQL container..."
    docker rm mysql-db > /dev/null
fi

# Remove network
if docker network ls | grep -q dockerops-network; then
    echo "Removing Docker network..."
    docker network rm dockerops-network > /dev/null
fi

# Remove volume
if docker volume ls | grep -q mysql-data; then
    echo "Removing Docker volume..."
    docker volume rm mysql-data > /dev/null
fi

echo "=================================="
echo "Cleanup completed successfully!"
echo "System reset done."
echo "=================================="
