# DockerOps Suite

## Overview
DockererOps Suite is a Docker-based automation toolkit built using Bash scripting. It provides a complete lifecycle management system for containerized applications including setup, monitoring, backup, service control, and cleanup.

## Features

- Automated Docker infrastructure setup
- MySQL container deployment
- Network and volume management
- Service lifecycle control (start/stop)
- Data backup using mysqldump
- System monitoring dashboard
- Full environment cleanup

## Architecture

setup.sh → Creates Docker network, volume, and MySQL container  
start.sh → Starts stopped containers  
stop.sh → Stops running containers  
monitor.sh → Displays system status  
backup.sh → Creates MySQL database backups  
cleanup.sh → Removes all resources

## Tech Stack

- Linux (CentOS)
- Docker
- Bash Scripting
- MySQL (Containerized)

## Usage

```bash
./setup.sh
./start.sh
./stop.sh
./monitor.sh
./backup.sh
./cleanup.sh
