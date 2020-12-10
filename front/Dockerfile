FROM node:10-alpine as build-step
WORKDIR /app
COPY package.json /app
RUN npm install
COPY . /app
RUN npm run build -- --outputPath=./dist/out

FROM bunkerity/bunkerized-nginx as prod
#ENV SERVER_NAME="doodle.rillettes.diverse-team.fr phpmyadmin.rillettes.diverse-team.fr pad.rillettes.diverse-team.fr"
#ENV MULTISITE=yes
#ENV phpmyadmin.rillettes.diverse-team.fr_PROXY_URL=/
#ENV phpmyadmin.rillettes.diverse-team.fr_PROXY_HOST=http://myadmin:8082
#ENV pad.rillettes.diverse-team.fr_PROXY_URL=/
#ENV pad.rillettes.diverse-team.fr_PROXY_HOST=http://etherpad:9001
COPY --from=build-step /app/dist/out/ /www



