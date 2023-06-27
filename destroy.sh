#!/bin/bash

set -e
terraform -chdir=02-lbc-install-terraform-manifests/ destroy --auto-approve
terraform -chdir=01-ekscluster-terraform-manifests/ destroy --auto-approve

aws dynamodb delete-table --table-name sushant2103
aws dynamodb delete-table --table-name sushant2103-lbc
aws s3 rb s3://sushant2103 --force
