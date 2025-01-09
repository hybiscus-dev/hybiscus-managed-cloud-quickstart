#!/usr/bin/env bash

DOCKER_USERNAME=$1
DOCKER_PASSWORD=$2

if [ $# -lt 2 ]; then
    >&2 echo "Please provide the username and password as arguments."
    exit 1
fi

docker login \
hybiscusdev.azurecr.io \
-u $DOCKER_USERNAME \
-p $DOCKER_PASSWORD

docker pull \
hybiscusdev.azurecr.io/managed-cloud/api:latest
