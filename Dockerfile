FROM node:latest

WORKDIR /app

ENV PORT=3001

COPY . .

RUN npm i

EXPOSE $PORT

ENTRYPOINT [ "node", "server.js" ]
