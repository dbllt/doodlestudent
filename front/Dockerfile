FROM node:10-alpine as build-step
WORKDIR /app
COPY package.json /app
RUN npm install
COPY . /app
RUN npm run build -- --outputPath=./dist/out

FROM bunkerity/bunkerized-nginx as prod
COPY --from=build-step /app/dist/out/ /www
