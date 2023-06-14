#!/bin/bash

set -x
du -hs * | sort -h
#sam deploy -t todo-list-aws/template.yaml --config-env ${ENVIRONMENT} --no-confirm-changeset --force-upload --no-fail-on-empty-changeset --no-progressbar
sam deploy template.yaml --config-env staging --no-confirm-changeset --force-upload --no-fail-on-empty-changeset --no-progressbar --stack-name todo-list-aws-staging --region us-east-1 --s3-bucket aws-sam-cli-managed-default-samclisourcebucket-c5ep64ophu30
