#!/bin/sh

build=${1}
registry_path=${2}

##Building the image and push the image to dockerhub##
docker build . -t ${registry_path}:latest;docker push ${registry_path}:latest



##Pushing image with BuildNumber##
docker build . -t ${registry_path}:${build};docker push ${registry_path}:${build}

