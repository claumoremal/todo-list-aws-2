#!/bin/bash

set -x
du -hs * | sort -h
sam deploy template.yaml --config-env ${ENVIRONMENT} --stack-name todo-list-aws-${ENVIRONMENT} ---no-confirm-changeset --force-upload --no-fail-on-empty-changeset --no-progressbar --region us-east-1 --s3-bucket aws-sam-cli-managed-default-samclisourcebucket-c5ep64ophu30