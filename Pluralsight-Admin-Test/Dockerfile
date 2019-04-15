FROM node:10.15.3-alpine

LABEL maintainer="rene.lopez.cano@gmail.com"

ENV CONTAINER_PATH  /testApi

COPY . $CONTAINER_PATH

WORKDIR $CONTAINER_PATH

# Get Packages
RUN npm install

# Serve API
ENTRYPOINT [ "npm","test" ]
