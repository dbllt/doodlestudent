FROM bunkerity/bunkerized-nginx as prod
RUN apk add --update npm
WORKDIR /app
COPY package.json /app
RUN npm install
COPY . /app
RUN npm run build 
