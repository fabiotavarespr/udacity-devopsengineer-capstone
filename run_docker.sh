#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

#Create DOCKER_PATH
export DOCKER_PATH=fabiotavarespr/udacity-devopsenginner-capstone

# Step 1:
# Build image and add a descriptive tag
echo "Build docker image and add a descriptive tag with: $DOCKER_PATH"
docker build --tag=$DOCKER_PATH .

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app
docker run --rm -p 8000:80 $DOCKER_PATH