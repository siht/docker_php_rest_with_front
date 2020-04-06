FROM node:12.16.1-alpine

COPY ./src/node_simple_static_server /app
WORKDIR /app
RUN npm i --only=prod
CMD ["node", "server.js"]
