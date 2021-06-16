#!/bin/sh

$build = ${1}
$registry_path = ${2}

##Building the image using latest tag & push to dockerhub

docker build . ${registry_path}:latest && docker push ${registry_path}:latest

##Pushing image with BuildNumber##

docker build . ${registry_path}:${build} && docker push ${registry_path}:${build}

