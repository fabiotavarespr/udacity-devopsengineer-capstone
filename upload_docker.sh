#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
export dockerpath=fabiotavarespr/udacity-devopsenginner-capstone
export DOCKER_ID_USER="fabiotavarespr"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker tag $DOCKER_ID_USER/udacity-devopsenginner-capstone $DOCKER_ID_USER/udacity-devopsenginner-capstone

# Step 3:
# Push image to a docker repository
docker push fabiotavarespr/udacity-devopsenginner-capstone