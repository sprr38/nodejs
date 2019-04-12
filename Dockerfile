
FROM ubuntu:16.04

WORKDIR /api

RUN apt-get update

RUN apt install curl -y

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -

RUN apt install nodejs -y

COPY . .

RUN npm install

CMD ["node","server.js"]
