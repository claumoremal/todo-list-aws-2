#!/bin/bash

set -x
du -hs * | sort -h
sam deploy template.yaml --config-env ${ENVIRONMENT} --resolve-s3 --no-confirm-changeset --force-upload --no-fail-on-empty-changeset --no-progressbar --region us-east-1 --stack-name todo-list-aws-production
