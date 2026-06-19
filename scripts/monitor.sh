#!/bin/bash

echo "=================================="
echo "   DockerOps Suite - Monitor"
echo "=================================="

echo ""
echo "[1] Running Containers:"
docker ps

echo ""
echo "[2] All Containers:"
docker ps -a

echo ""
echo "[3] Docker Networks:"
docker network ls

echo ""
echo "[4] Docker Volumes:"
docker volume ls

echo ""
echo "[5] MySQL Health Check:"
if docker ps | grep -q mysql-db; then
    echo "MySQL Container: RUNNING"
else
    echo "MySQL Container: NOT RUNNING"
fi

echo ""
echo "=================================="
echo "Monitor Completed"
echo "=================================="
