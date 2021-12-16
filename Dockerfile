FROM node:latest

WORKDIR /src

ENV PORT 80

COPY package.json /code/package.json

RUN npm install

COPY . /src

CMD { "nodemon", "src/index.js" }
