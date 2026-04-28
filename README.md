# 🚀 End-to-End DevOps Platform (Docker + Kubernetes + CI/CD)

This project demonstrates a **production-style DevOps workflow** using Docker, Kubernetes, Helm, and GitHub Actions.

---

## 📌 Project Overview

This project showcases:

- Containerized Python Flask application
- CI/CD pipeline using GitHub Actions
- Docker image build and push to Docker Hub
- Kubernetes deployment using Helm
- Autoscaling using Horizontal Pod Autoscaler (HPA)
- Cloud-based development using GitHub Codespaces

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

---

### 2. Run Application

docker run -p 5000:5000 devops-app

---

### 3. Deploy to Kubernetes

helm upgrade --install devops-demo-app ./helm/devops-demo-app  
kubectl get pods

---

### 4. Access Application

kubectl port-forward svc/devops-demo-app-service 8080:80  

Open:  
http://localhost:8080

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

## 💡 Key Features

- End-to-end DevOps pipeline
- Automated CI/CD workflows
- Kubernetes deployment with Helm
- Production-style scaling setup
- Cloud-based development

---

## 📌 Resume Description

Built an end-to-end DevOps platform using Docker, Kubernetes, Helm, and GitHub Actions. Automated CI/CD pipelines, deployed containerized applications to Kubernetes, and implemented autoscaling with HPA for production-style reliability.

---

## 🔥 Future Enhancements

- Prometheus & Grafana monitoring
- Ingress controller
- Terraform AKS/EKS deployment
- GitOps (ArgoCD)

---

## 👨‍💻 Author

Abhilash Pujari