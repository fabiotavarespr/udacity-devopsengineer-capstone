#!/usr/bin/env bash

## Create Cloudformation stack
aws cloudformation update-stack \
--stack-name $1 \
--template-body file://$2 \
--parameters file://$3 \
--region=$4 \
--capabilities CAPABILITY_IAM