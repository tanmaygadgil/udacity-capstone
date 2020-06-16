#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath= tanmaygadgil/udacity-project-4


# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
export DOCKER_ID_USER="tanmaygadgil"
docker login
docker tag udacity-project-4:v2 $DOCKER_ID_USER/udacity-project-4:v2

# Step 3:
# Push image to a docker repository
docker push tanmaygadgil/udacity-project-4:v2