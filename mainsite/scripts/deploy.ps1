#!/usr/bin/env pwsh
Param()

Write-Host "Building Docker image mainsite-example:latest..."
docker build -t "mainsite-example:latest" -f examples/docker/Dockerfile .

Write-Host "To deploy to Kubernetes: kubectl apply -f examples/k8s/deployment.yaml"

Write-Host "Done."
