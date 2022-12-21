#!/bin/bash

echo docker build -f Dockerfile-2 -t ubuntu/java .
docker build -f Dockerfile-2 -t ubuntu/java .

echo docker run --rm ubuntu/java
docker run --rm ubuntu/java

echo docker run --rm ubuntu/java java --list-modules
docker run --rm ubuntu/java java --list-modules

echo docker run --rm ubuntu/java javac
docker run --rm ubuntu/java javac

echo docker run --rm ubuntu/java which java
docker run --rm ubuntu/java which java
