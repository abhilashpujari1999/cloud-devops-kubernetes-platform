# End-to-End DevOps Platform

This project demonstrates a production-style DevOps workflow using Docker, Kubernetes, Helm, and GitHub Actions.

## Project Overview

This project includes:

- Containerized Python Flask application
- CI/CD pipeline using GitHub Actions
- Docker image build and push to Docker Hub
- Kubernetes deployment using Helm
- Autoscaling using Horizontal Pod Autoscaler
- Cloud-based development using GitHub Codespaces

## Architecture

Developer → GitHub → GitHub Actions → Docker Hub → Kubernetes using Helm → Application

## Tech Stack

- Docker
- Kubernetes
- Kind
- Helm
- GitHub Actions
- Python Flask
- GitHub Codespaces

## Project Structure

cloud-devops-kubernetes-platform/
├── app/
├── helm/
├── terraform/
├── monitoring/
├── docs/
├── .github/workflows/
└── README.md

## How to Run

### 1. Build Docker Image

cd app  
docker build -t devops-app .

### 2. Run Application

docker run -p 5000:5000 devops-app

### 3. Deploy to Kubernetes

helm upgrade --install devops-demo-app ./helm/devops-demo-app  
kubectl get pods

### 4. Access Application in Codespaces

kubectl port-forward svc/devops-demo-app-service 8080:80

Then go to Codespaces Ports tab and open port 8080.

Note: localhost links may not work directly in Codespaces. Use the forwarded port URL.

## CI/CD Pipeline

On every push to main:

- Builds Docker image
- Runs container health check
- Pushes image to Docker Hub

## Autoscaling

kubectl autoscale deployment devops-demo-app --cpu=50% --min=2 --max=5

## Key Features

- End-to-end DevOps pipeline
- Automated CI/CD workflow
- Kubernetes deployment using Helm
- Horizontal Pod Autoscaler configuration
- Cloud-based development workflow

## Future Enhancements

- Prometheus and Grafana monitoring
- Ingress controller
- Terraform AKS/EKS deployment
- GitOps using ArgoCD

## Author

Abhilash Pujari