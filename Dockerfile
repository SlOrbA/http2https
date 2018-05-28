FROM node:6-slim

COPY .env /data/http2https/.env

COPY package.json /data/http2https/package.json
COPY node_modules/ /data/http2https/node_modules

RUN cd /data/http2https && npm prune 

COPY config/ /data/http2https/config
COPY dist/ /data/http2https/dist

EXPOSE 4011

USER root
WORKDIR /data/http2https

CMD ["npm", "run", "start-production"]
