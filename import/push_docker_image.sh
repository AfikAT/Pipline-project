#!/bin/sh

build=${1}
registry_path=${2}
USERNAME=${3}
PASSWORD=${4}
docker login -u ${USERNAME} ${PASSWORD}
##Building the image and push the image to dockerhub##
#docker build --network sonarnet -t ${registry_path}:latest .;docker push ${registry_path}:latest



##Pushing image with BuildNumber##
#docker build --network sonarnet -t ${registry_path}:${build} .;docker push ${registry_path}:${build} 

