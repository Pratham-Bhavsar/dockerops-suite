DockerOps Suite

## About the Project

DockerOps Suite started as a simple Docker project where I wanted to automate the deployment and management of a MySQL container using Bash scripts. As I learned more about DevOps tools, I gradually expanded the project by adding Docker Compose, GitHub Actions, and eventually Kubernetes.

The goal of this project was not only to deploy applications but also to understand how modern DevOps workflows are built, from containerization to orchestration.

---

## What This Project Includes

### Docker & Bash Automation

I created several Bash scripts to automate common tasks such as:

* Setting up the environment
* Starting and stopping containers
* Monitoring container status
* Creating database backups
* Cleaning up resources

### Docker Compose

After working with standalone containers, I migrated the setup to Docker Compose to manage multiple services more efficiently.

Services used:

* MySQL 8
* Adminer

Environment variables are managed using a `.env` file.

### GitHub Actions

To get familiar with CI/CD concepts, I integrated GitHub Actions into the project.

The workflow automatically checks shell scripts using ShellCheck whenever changes are pushed to the repository.

### Kubernetes

After completing the Docker-based setup, I migrated the application to Kubernetes using Kind.

While doing this, I learned about:

* Deployments
* Services
* ConfigMaps
* Secrets
* Persistent Volumes (PV)
* Persistent Volume Claims (PVC)
* StatefulSets

### Stateful MySQL Deployment

Since databases need persistent storage, I deployed MySQL as a StatefulSet instead of a Deployment.

The database uses Persistent Volumes to ensure data is not lost when pods are recreated.

I tested this by creating data inside MySQL, deleting the pod, and verifying that the data was still available after Kubernetes recreated the pod.

---

## Technologies Used

* Linux (CentOS Stream 9)
* Bash Scripting
* Docker
* Docker Compose
* Git & GitHub
* GitHub Actions
* Kubernetes (Kind)
* MySQL 8
* Adminer

---

## Project Structure

```text
dockerops-suite/
│
├── backups/
├── kubernetes/
├── scripts/
│
├── docker-compose.yml
├── README.md
└── .github/workflows/
```

---

## What I Learned

This project helped me understand:

* Linux administration basics
* Docker and containerization
* Docker Compose
* Bash scripting
* Git and GitHub workflows
* CI/CD fundamentals
* Kubernetes architecture
* Stateful applications
* Persistent storage management

It also gave me practical experience in troubleshooting containers, networking issues, storage configuration, and Kubernetes resources.

