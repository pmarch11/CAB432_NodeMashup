# set base image
FROM node:10

# File Author / Maintainer
MAINTAINER Patric Marchant

#copying relevant files
COPY . /app
WORKDIR /app
COPY ./assign1/ /app

#filling dependencies and setting up 
RUN npm install

#exposing ports
EXPOSE 80
EXPOSE 3000

#running server
CMD ["node", "app.js"]