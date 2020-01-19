#!/usr/bin/env bash

## Create Cloudformation stack
echo "Create cloudformation Worker Nodes"
../create_with_iam.sh udacity-capstone-worker-nodes worker_nodes.yml worker_nodes_parameters.json us-west-2
