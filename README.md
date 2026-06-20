# DockerOps Suite

## About the Project

DockerOps Suite started as a simple Docker project where I wanted to automate the deployment and management of a MySQL container using Bash scripts.

As I learned more about DevOps tools and practices, I gradually expanded the project by adding Docker Compose, GitHub Actions, Kubernetes, Prometheus, and Grafana.

The main goal of this project was not just to deploy applications, but to gain hands-on experience with the tools and workflows commonly used in modern DevOps environments.

---

## What This Project Includes

### Docker & Bash Automation

I created several Bash scripts to automate common tasks such as:

* Setting up the environment
* Starting and stopping containers
* Monitoring container status
* Creating database backups
* Cleaning up resources

This helped me understand how automation can simplify repetitive administrative tasks.

---

### Docker Compose

After working with standalone containers, I migrated the setup to Docker Compose to manage multiple services more efficiently.

Services used:

* MySQL 8
* Adminer

Environment variables are managed using a `.env` file.

---

### GitHub Actions

To get familiar with CI/CD concepts, I integrated GitHub Actions into the project.

The workflow automatically validates shell scripts using ShellCheck whenever code is pushed to the repository.

This gave me a basic understanding of automated code validation and CI pipelines.

---

### Kubernetes

After completing the Docker-based setup, I migrated the application to Kubernetes using Kind (Kubernetes in Docker).

While working with Kubernetes, I learned about:

* Deployments
* Services
* ConfigMaps
* Secrets
* Persistent Volumes (PV)
* Persistent Volume Claims (PVC)
* StatefulSets

---

### Stateful MySQL Deployment

Since databases require persistent storage, I deployed MySQL as a StatefulSet instead of a Deployment.

The database uses Persistent Volume Claims to ensure data remains available even if pods are recreated.

To verify persistence, I created data inside MySQL, deleted the pod, and confirmed that the data was still available after Kubernetes recreated the pod.

---

### Monitoring with Prometheus & Grafana

To understand monitoring and observability, I added Prometheus and Grafana to the Kubernetes environment.

Using Prometheus, I collected cluster metrics, and Grafana was used to visualize those metrics through dashboards.

I also configured Metrics Server to monitor resource utilization within the cluster.

This helped me learn the basics of monitoring Kubernetes workloads and analyzing system performance.

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
* Prometheus
* Grafana

---

## Project Structure

```text
dockerops-suite/
│
├── backups/
├── kubernetes/
│   └── monitoring/
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
* Monitoring and observability
* Prometheus and Grafana basics

It also gave me practical experience in troubleshooting containers, networking issues, storage configuration, Kubernetes resources, and monitoring tools.

---

## Future Improvements

Some improvements I plan to explore in the future:

* Jenkins-based CI/CD pipelines
* Kubernetes Ingress
* Helm Charts
* Ansible Automation
* Cloud deployment on AWS

This project represents my learning journey through Docker, Kubernetes, automation, and monitoring while building a practical DevOps environment from scratch.
