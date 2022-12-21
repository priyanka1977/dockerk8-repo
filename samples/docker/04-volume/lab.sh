#!/bin/bash

echo docker build -f Dockerfile -t ubuntu/java .
docker build -f Dockerfile -t ubuntu/java .

echo docker run -it --rm -v `pwd`/src:/mnt/local -v `pwd`/bin/docker-entrypoint.sh:/usr/bin/docker-entrypoint.sh -v java-logs:/var/log/java ubuntu/java OKWorld.java
docker run -it --rm -v `pwd`/src:/mnt/local -v `pwd`/bin/docker-entrypoint.sh:/usr/bin/docker-entrypoint.sh -v java-logs:/var/log/java ubuntu/java OKWorld.java

echo docker run -it --rm -v `pwd`/src:/mnt/local -v `pwd`/bin/docker-entrypoint.sh:/usr/bin/docker-entrypoint.sh -v java-logs:/var/log/java ubuntu/java
docker run -it --rm -v `pwd`/src:/mnt/local -v `pwd`/bin/docker-entrypoint.sh:/usr/bin/docker-entrypoint.sh -v java-logs:/var/log/java ubuntu/java

echo ls -al ./src/java
ls -al ./src/java

echo docker run -it --rm -v `pwd`/src:/mnt/local -v `pwd`/bin/docker-entrypoint.sh:/usr/bin/docker-entrypoint.sh -v java-logs:/var/log/java ubuntu/java ls -al /var/log/java
docker run -it --rm -v `pwd`/src:/mnt/local -v `pwd`/bin/docker-entrypoint.sh:/usr/bin/docker-entrypoint.sh -v java-logs:/var/log/java ubuntu/java ls -al /var/log/java

echo docker run -it --rm -v `pwd`/src:/mnt/local -v `pwd`/bin/docker-entrypoint.sh:/usr/bin/docker-entrypoint.sh -v java-logs:/var/log/java ubuntu/java cat /var/log/java/HelloWorld.log
docker run -it --rm -v `pwd`/src:/mnt/local -v `pwd`/bin/docker-entrypoint.sh:/usr/bin/docker-entrypoint.sh -v java-logs:/var/log/java ubuntu/java cat /var/log/java/HelloWorld.log

echo docker run -it --rm -v `pwd`/src:/mnt/local -v `pwd`/bin/docker-entrypoint.sh:/usr/bin/docker-entrypoint.sh -v java-logs:/var/log/java ubuntu/java cat /var/log/java/OKWorld.log
docker run -it --rm -v `pwd`/src:/mnt/local -v `pwd`/bin/docker-entrypoint.sh:/usr/bin/docker-entrypoint.sh -v java-logs:/var/log/java ubuntu/java cat /var/log/java/OKWorld.log
