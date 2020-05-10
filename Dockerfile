FROM node:14.2.0-alpine
WORKDIR /app
ENV PORT=3001
EXPOSE $PORT
RUN apk add bash
COPY . .
RUN npm i
ENTRYPOINT [ "node", "server.js" ]
