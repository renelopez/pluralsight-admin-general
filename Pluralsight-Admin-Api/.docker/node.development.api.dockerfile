# Build stage
FROM node:10.15.3-alpine

LABEL maintainer="rene.lopez.cano@gmail.com"

# Copy src

ENV CONTAINER_PATH /srcApi

COPY . $CONTAINER_PATH

WORKDIR $CONTAINER_PATH


# Get Packages
RUN npm install

EXPOSE 3001

# Serve API
ENTRYPOINT [ "npm","start" ]
