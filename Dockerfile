FROM node:14.2.0-alpine

RUN apk add nano bash

WORKDIR /app

ENV PORT=3001

COPY . .

RUN npm i

EXPOSE $PORT

ENTRYPOINT [ "node", "server.js" ]
