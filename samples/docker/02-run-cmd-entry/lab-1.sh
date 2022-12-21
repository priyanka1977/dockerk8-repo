#!/bin/bash

echo "--- Build image with java ---"
docker build -f Dockerfile-1 -t ubuntu/java .

echo "--- Run a java command ---"
docker run --rm ubuntu/java java -version

echo "--- Run a linux command ---"
docker run --rm ubuntu/java ls -al

