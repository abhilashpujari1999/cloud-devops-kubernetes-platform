# Troubleshooting

## ImagePullBackOff

Cause: Kubernetes cannot pull the Docker image.

Fix:
- Check Docker Hub image name
- Confirm image exists in Docker Hub
- Update `helm/devops-demo-app/values.yaml`

## Pod Not Running

Run:

kubectl describe pod <pod-name>

## App Not Opening in Codespaces

Use the Codespaces Ports tab instead of localhost.

Run:

kubectl port-forward svc/devops-demo-app-service 8080:80

Then open forwarded port 8080.

## HPA Shows CPU Unknown

Cause: Metrics server is not installed.

This is expected in a basic Kind cluster unless metrics-server is added.