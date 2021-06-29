FROM node:dubnium-alpine3.11
LABEL maintainer="Daniel Rataj <daniel.rataj@centrum.cz>"
LABEL org.opencontainers.image.source="https://github.com/whoopsmonitor/whoopsmonitor-check-redis-connect"
LABEL com.whoopsmonitor.documentation="https://github.com/whoopsmonitor/whoopsmonitor-check-redis-connect"
LABEL com.whoopsmonitor.env.WM_CONNECTION_STRING="redis://user:password@host/collection"

WORKDIR /tmp/app

COPY ./package.json ./package.json
COPY ./package-lock.json ./package-lock.json

RUN npm install

WORKDIR /app
RUN cp -R /tmp/app/* ./
COPY ./src/index.js ./src/index.js

CMD [ "npm", "start", "--silent" ]
