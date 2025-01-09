#!/usr/bin/env bash

docker run -d \
--env-file .env \
-v $(pwd)/data:/usr/app/data \
--entrypoint "./entrypoint-worker.sh" \
hybiscusdev.azurecr.io/managed-cloud/api:latest