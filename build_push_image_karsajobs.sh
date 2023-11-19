#!/bin/sh

# Build docker image for docker hub
# docker build -t elvirareza/karsajobs:latest .

# Build docker image for github packages
docker build --label "org.opencontainers.image.source=https://github.com/pjwoolf/a433-microservices" \
	-t ghcr.io/pjwoolf/karsajobs:latest .

# Login to docker hub
# echo $PASSWORD_DOCKER_HUB | docker login -u elvirareza --password-stdin

# Login to github packages
echo $PASSWORD_GHCR | docker login -u pjwoolf --password-stdin ghcr.io

# Push image to docker hub
# docker push elvirareza/karsajobs:latest

# Push image to github package
docker push ghcr.io/pjwoolf/karsajobs:latest
