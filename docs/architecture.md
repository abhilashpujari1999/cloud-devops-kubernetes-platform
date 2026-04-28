# Architecture

This project follows a simple DevOps workflow:

Developer → GitHub → GitHub Actions → Docker Hub → Kubernetes → Application

## Flow

1. Developer pushes code to GitHub.
2. GitHub Actions builds the Docker image.
3. The pipeline runs a container health check.
4. The Docker image is pushed to Docker Hub.
5. Kubernetes deploys the application using Helm.
6. The app is exposed through a Kubernetes service.

## Components

- Flask app: Simple health-check API
- Docker: Containerizes the application
- GitHub Actions: CI/CD automation
- Docker Hub: Image registry
- Helm: Kubernetes deployment packaging
- Kubernetes: Runs the containerized app