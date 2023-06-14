#!/bin/bash

set -x
du -hs * | sort -h
sam deploy --template todo-list-aws/template.yaml --config-env ${ENVIRONMENT} --no-confirm-changeset --force-upload --no-fail-on-empty-changeset --no-progressbar
