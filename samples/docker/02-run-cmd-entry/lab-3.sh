#!/bin/bash

echo chmod +x docker-entrypoint.sh 
chmod +x docker-entrypoint.sh 

echo docker build -f Dockerfile-3 -t ubuntu/java .
docker build -f Dockerfile-3 -t ubuntu/java .

echo docker run --rm ubuntu/java
docker run --rm ubuntu/java

echo docker run --rm ubuntu/java --list-modules
docker run --rm ubuntu/java --list-modules
