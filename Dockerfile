FROM node:5.12
WORKDIR /data
ENV NODE_PATH /usr/local/lib/node_modules
ENV PATH=$PATH:/node_modules/.bin
ENV JOBS 4
RUN npm set progress=false

# http registry is faster, apparently
RUN npm config set registry http://registry.npmjs.org/

ADD package.json /data/package.json
RUN npm install

ADD . /data
RUN npm install
ENV PORT=8080
CMD ["node", "index.js"]
