#!/bin/bash

if [ ! -f ./webapp.jar ]; then
   curl https://ntw-shared-data.s3.ap-south-1.amazonaws.com/samples/webapp/webapp.jar -o webapp.jar
fi

echo docker build -t sample/webapp .
docker build -t sample/webapp .

echo docker run -dt --rm --name webapp sample/webapp
docker run -dt --rm --name webapp sample/webapp

echo curl http://localhost:8080/instance
curl http://localhost:8080/instance

echo docker rm -f webapp
docker rm -f webapp

echo docker run -dt -p 8080:8080 --name webapp sample/webapp
docker run -dt -p 8080:8080 --name webapp sample/webapp

echo docker logs -f webapp
docker logs -f webapp

echo curl http://localhost:8080/instance
curl http://localhost:8080/instance

echo docker exec webapp bash -c 'echo "Some sample text" > /sample.txt'
docker exec webapp bash -c 'echo "Some sample text" > /sample.txt'

echo docker stop webapp
docker stop webapp

echo docker ps
docker ps

echo docker ps -a
docker ps -a

echo docker start webapp
docker start webapp

echo docker logs -f webapp
docker logs -f webapp

echo curl http://localhost:8080/instance
curl http://localhost:8080/instance

echo docker exec webapp bash -c 'cat /sample.txt'
docker exec webapp bash -c 'cat /sample.txt'

echo docker rm -f webapp
docker rm -f webapp

echo docker run -dt --rm --name webapp -p 8080:7070 -e server.port=7070 sample/webapp
docker run -dt --rm --name webapp -p 8080:7070 -e server.port=7070 sample/webapp

echo docker logs -f webapp
docker logs -f webapp

echo curl http://localhost:8080/instance
curl http://localhost:8080/instance

echo docker rm -f webapp
docker rm -f webapp
