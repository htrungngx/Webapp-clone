FROM node:latest
FROM  jenkins/jenkins:lts

RUN yum install docker -y
WORKDIR /usr/src/app
COPY package.json ./
RUN npm install --force
COPY . .
EXPOSE 8080
CMD ['npm', 'start']