#!/usr/bin/env bash

docker run \
-p 3000:3000 \
-v $(pwd)/data:/usr/app/data \
--env-file .env \
hybiscusdev.azurecr.io/managed-cloud/api:latest