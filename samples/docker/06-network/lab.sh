#!/bin/bash

echo docker network ls
docker network ls

echo docker network create test-net
docker network create test-net

echo docker network ls
docker network ls

echo docker run -dt --rm --name webapp --hostname webapp-1 --network test-net -p 8080:8080 sample/webapp
docker run -dt --rm --name webapp --hostname webapp-1 --network test-net -p 8080:8080 sample/webapp

docker logs -f webapp

echo docker run -dt --rm --name nginx --hostname nginx-1 --network test-net -p 8000:80 -v `pwd`/nginx.conf:/etc/nginx/conf.d/default.conf nginx
docker run -dt --rm --name nginx --hostname nginx-1 --network test-net -p 8000:80 -v `pwd`/nginx.conf:/etc/nginx/conf.d/default.conf nginx

docker logs -f nginx

echo curl http://localhost:8000/instance
curl http://localhost:8000/instance

echo docker rm -f webapp nginx
docker rm -f webapp nginx
