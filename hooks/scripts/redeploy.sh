#!/bin/sh

docker-compose down
docker system prune -f
git pull
docker-compose up
