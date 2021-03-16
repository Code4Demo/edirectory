#!/bin/bash

## Please download the the eDirectory from
## https://microfocus.com/mysoftware/download/downloadCenter

## Docker info refer <https://www.netiq.com/documentation/edirectory-92/edir_install/data/t49vfpqotaz8.html>

#tar -xvf ./eDirectory_920.tar.gz
#docker load --input ./edir920.tar

docker build -f ./Dockerfile  -t code4demo/edirectory ./
docker push code4demo/edirectory
