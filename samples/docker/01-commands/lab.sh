#!/bin/bash

echo pull a ubuntu image
docker pull ubuntu

echo list images
docker images

echo docker execute containers as commands
docker run ubuntu ls -al /
docker run ubuntu ps -eaf
docker run ubuntu /bin/bash -c 'for i in {1..10}; do echo $i; done;'

echo list running containers
docker ps

echo list all containers
docker ps -a

echo clean all containers
docker ps -a --format={{.ID}} | xargs docker rm -f

echo create containers with --rm
docker run --rm ubuntu ls -al /
docker run --rm ubuntu ps -eaf

echo list all containers
docker ps -a

echo run container interactively
docker run -it --rm --name interactive-container ubuntu bash

echo run container in detached mode
docker run -dt --rm --name detached-container ubuntu sleep 3600

echo copy sample.txt to detached container
docker cp ./sample.txt detached-container:/

echo view sample.txt file on container
docker exec -it detached-container cat /sample.txt

echo connect to the running container
docker exec -it detached-container bash

echo remove the container
docker rm -f detached-container

echo list all containers
docker ps -a
