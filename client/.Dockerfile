FROM node:alpine

WORKDIR /app

COPY "./package.json" ./

RUN apk add --no-cache git
RUN apk add --update python make g++\
   && rm -rf /var/cache/apk/*
RUN npm install

COPY ./ ./

CMD ["npm","run","start:live"]

