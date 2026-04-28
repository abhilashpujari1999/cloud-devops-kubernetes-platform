# 🚀 End-to-End DevOps Platform

![Docker](https://img.shields.io/badge/Docker-Containerized-blue)
![Kubernetes](https://img.shields.io/badge/Kubernetes-Orchestration-blue)
![Helm](https://img.shields.io/badge/Helm-Package%20Manager-blue)
![GitHub Actions](https://img.shields.io/badge/CI/CD-GitHub%20Actions-black)
![Prometheus](https://img.shields.io/badge/Monitoring-Prometheus-orange)
![Grafana](https://img.shields.io/badge/Visualization-Grafana-yellow)
![Terraform](https://img.shields.io/badge/IaC-Terraform-purple)

---

## 📌 Overview

This project demonstrates a **production-style DevOps pipeline** that builds, deploys, and monitors a containerized application using modern DevOps tools.

It covers the full lifecycle:
- Code → CI/CD → Container → Kubernetes → Monitoring → Infrastructure as Code

---

## 🏗️ Architecture

Developer → GitHub → GitHub Actions → Docker Hub → Kubernetes (Helm) → Prometheus → Grafana

---

## ⚙️ Tech Stack

- Docker  
- Kubernetes (Kind)  
- Helm  
- GitHub Actions  
- Prometheus  
- Grafana  
- Terraform (EKS & AKS structure)  
- Python (Flask)  
- GitHub Codespaces  

---

## 📁 Project Structure

    cloud-devops-kubernetes-platform/
    ├── app/                      # Flask application
    ├── helm/                     # Kubernetes Helm charts
    ├── terraform/
    │   ├── aws-eks/              # AWS EKS configuration
    │   └── azure-aks/            # Azure AKS configuration
    ├── monitoring/               # Prometheus & Grafana configs
    ├── docs/                     # Architecture & guides
    ├── .github/workflows/        # CI/CD pipeline
    └── README.md

---

## 🚀 How to Run

### Build Docker Image

    cd app
    docker build -t devops-app .

### Run Application

    docker run -p 5000:5000 devops-app

### Deploy to Kubernetes

    helm upgrade --install devops-demo-app ./helm/devops-demo-app
    kubectl get pods

### Access Application (Codespaces)

    kubectl port-forward svc/devops-demo-app-service 8080:80

Then open **Codespaces → Ports tab → Port 8080**

---

## 🔄 CI/CD Pipeline

On every push to `main`:

- Build Docker image  
- Run container health check  
- Push image to Docker Hub  

---

## 📈 Autoscaling

    kubectl autoscale deployment devops-demo-app --cpu=50% --min=2 --max=5

---

## 📊 Monitoring (Prometheus + Grafana)

- Prometheus installed via Helm for metrics collection  
- Verified metrics using PromQL (`up`)  
- Grafana integrated with Prometheus as data source  
- Imported dashboards for cluster observability  

### Key Metrics Observed

- CPU usage  
- Memory usage  
- Node health  
- Pod metrics  

---

## ☁️ Infrastructure as Code (Terraform)

Terraform configurations included for:

- AWS EKS cluster setup  
- Azure AKS cluster setup  

These demonstrate real-world IaC structure for Kubernetes provisioning.

---

## 💡 Key Features

- End-to-end DevOps pipeline  
- Automated CI/CD workflow  
- Kubernetes deployment using Helm  
- Horizontal Pod Autoscaler  
- Monitoring with Prometheus & Grafana  
- Terraform-based infrastructure setup  

---

## 🔥 Future Enhancements

- Ingress controller  
- ArgoCD (GitOps)  
- Full cloud deployment (EKS/AKS)  

---

## 👨‍💻 Author

**Abhilash Pujari**
