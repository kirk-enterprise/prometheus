#!/bin/bash
#
# A script used to release kirk releases.
#

 # Replace '+' with '-', because docker image tag does not support '+' char.
export VERSION=$(./hack/version.sh | awk -F' ' '/^GIT_VERSION:/ {print $2}' | tr -s '+' '-')
echo "VERSION: $VERSION"
DOCKER_IMAGE_TAG=$VERSION make docker
