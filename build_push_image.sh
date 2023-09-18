#!/bin/sh

# Create docker image
docker build --label "org.opencontainers.image.source=https://github.com/pjwoolf/a433-microservices" -t item-app:v1 .

# Show docker image list
docker images

# Rename docker image for docker hub
# docker tag item-app:v1 elvirareza/item-app:v1

# Rename docker image for github package
docker tag item-app:v1 ghcr.io/pjwoolf/item-app:v1

# Login to docker hub
# echo $PASSWORD_DOCKER_HUB | docker login -u elvirareza --password-stdin

# Login to github packages
echo $PASSWORD_GHCR | docker login -u pjwoolf --password-stdin ghcr.io

# Push image to docker hub
# docker push elvirareza/item-app:v1

# Push image to github package
docker push ghcr.io/pjwoolf/item-app:v1
