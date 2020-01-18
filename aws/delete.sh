#!/usr/bin/env bash

## Delete Cloudformation stack
aws cloudformation delete-stack \
--stack-name $1 \
--region=$2