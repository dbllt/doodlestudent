#!/bin/sh

docker-compose down
docker-compose rm -f
docker system prune -f
git pull
docker-compose up --build --force-recreate -d
exit 0
