#!/usr/bin/env bash

## Create Cloudformation stack
echo "Create cloudformation eks"
../create.sh udacity-capstone-eks eks.yml eks_parameters.json us-west-2