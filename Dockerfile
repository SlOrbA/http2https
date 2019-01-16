FROM node

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm nstall 

COPY . .

EXPOSE 4011

CMD ["npm", "start"]
