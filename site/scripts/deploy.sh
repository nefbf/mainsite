#!/usr/bin/env bash
set -euo pipefail

# Simple helper to build the docker image and (optionally) apply k8s manifests
IMAGE_NAME="mainsite-example:latest"

echo "Building Docker image ${IMAGE_NAME}..."
docker build -t "${IMAGE_NAME}" -f examples/docker/Dockerfile .

echo "To push the image, tag and push to your registry. To deploy to Kubernetes run:"
echo "  kubectl apply -f examples/k8s/deployment.yaml"

echo "Done."
