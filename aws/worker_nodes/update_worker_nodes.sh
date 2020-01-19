#!/usr/bin/env bash

## Update Cloudformation stack
echo "Update cloudformation infrastructure"
../update_with_iam.sh udacity-capstone-worker-nodes worker_nodes.yml worker_nodes_parameters.json us-west-2
