#!/bin/bash

echo docker build -f Dockerfile -t ubuntu/java .
docker build -f Dockerfile -t ubuntu/java .

echo docker run --rm ubuntu/java HelloWorld.java
docker run --rm ubuntu/java HelloWorld.java

echo docker run --rm ubuntu/java OKWorld.java
docker run --rm ubuntu/java OKWorld.java

echo docker run --rm ubuntu/java ls -al
docker run --rm ubuntu/java ls -al

echo docker run --rm ubuntu/java
docker run --rm ubuntu/java
