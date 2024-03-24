FROM node:hydrogen-buster
COPY graphserver.js .
COPY package.json .
COPY UScities.json .
RUN npm install &&\
    apk add curl libcurl &&\
    apk update &&\
    apk upgrade
EXPOSE  4000
CMD node graphserver.js
