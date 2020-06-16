#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=tanmaygadgil/udacity-project-4:v2
# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacity-project-3 --generator=deployment/apps.v1 --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
echo "Sleeping for 100 seconds to complete the pull"
sleep 100
kubectl port-forward udacity-project-3 8080:80
