# 🚀 End-to-End DevOps Platform

![Docker](https://img.shields.io/badge/Docker-Containerized-blue)
![Kubernetes](https://img.shields.io/badge/Kubernetes-Orchestration-blue)
![Helm](https://img.shields.io/badge/Helm-Package%20Manager-blue)
![GitHub Actions](https://img.shields.io/badge/CI/CD-GitHub%20Actions-black)
![Python](https://img.shields.io/badge/Python-Flask-green)

---

## 📌 Overview

This project demonstrates a production-style DevOps pipeline that builds, ships, and deploys a containerized application to Kubernetes.

---

## 🏗️ Architecture

Developer → GitHub → GitHub Actions → Docker Hub → Kubernetes (Helm) → Application

---

## ⚙️ Tech Stack

- Docker
- Kubernetes (Kind)
- Helm
- GitHub Actions
- Python (Flask)
- GitHub Codespaces

---

## 📁 Project Structure

    cloud-devops-kubernetes-platform/
    ├── app/
    ├── helm/
    ├── terraform/
    ├── monitoring/
    ├── docs/
    ├── .github/workflows/
    └── README.md

---

## 🚀 How to Run

### 1. Build Docker Image

cd app  
docker build -t devops-app .

### 2. Run Application

docker run -p 5000:5000 devops-app

### 3. Deploy to Kubernetes

helm upgrade --install devops-demo-app ./helm/devops-demo-app  
kubectl get pods

### 4. Access Application (Codespaces)

kubectl port-forward svc/devops-demo-app-service 8080:80  

Then open Codespaces → Ports tab → Port 8080

Note: localhost does not work in Codespaces. Use forwarded port.

---

## 🔄 CI/CD Pipeline

On push to main:

- Build Docker image  
- Run health check  
- Push to Docker Hub  

---

## 📈 Autoscaling

kubectl autoscale deployment devops-demo-app --cpu=50% --min=2 --max=5

---

## 💡 Key Features

- End-to-end DevOps pipeline  
- CI/CD automation  
- Kubernetes deployment using Helm  
- Horizontal Pod Autoscaler  
- Cloud-based workflow  

---

## 🔥 Future Enhancements

- Prometheus & Grafana monitoring  
- Ingress controller  
- Terraform AKS/EKS  
- GitOps (ArgoCD)  

---

## 👨‍💻 Author

Abhilash Pujari
