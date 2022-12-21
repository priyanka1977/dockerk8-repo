#!/bin/bash

sudo apt-get update

echo "-- Install Docker --"
sudo apt-get install -y docker.io
sudo docker run hello-world

echo "-- Configure Docker Compose --"
sudo apt install -y docker-compose

echo "-- Configure Docker sudo less --"
sudo usermod -a -G docker $USER
sudo service docker restart
newgrp docker

echo "-- Done --"
