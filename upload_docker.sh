#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create DOCKER_PATH
export DOCKER_PATH=fabiotavarespr/udacity-devopsenginner-capstone

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $DOCKER_PATH"
docker login

echo "Build docker image and add a descriptive tag with: $DOCKER_PATH"
docker build --tag=$DOCKER_PATH .

docker tag $DOCKER_PATH $DOCKER_PATH

# Step 3:
# Push image to a docker repository
docker push $DOCKER_PATH