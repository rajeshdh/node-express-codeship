FROM node:7.7.2-alpine

WORKDIR /usr/app

COPY package.json .
RUN npm install --quiet

COPY . .
RUN apk update && apk add postgresql