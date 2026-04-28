# Setup Guide

## Build Docker Image

cd app  
docker build -t devops-app .

## Run Container

docker run -p 5000:5000 devops-app

## Deploy with Helm

helm upgrade --install devops-demo-app ./helm/devops-demo-app

## Check Pods

kubectl get pods

## Access App in Codespaces

kubectl port-forward svc/devops-demo-app-service 8080:80

Open port 8080 from the Codespaces Ports tab.