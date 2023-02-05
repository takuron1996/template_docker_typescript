ARG RUNTIME_VERSION="19.6"
FROM node:${RUNTIME_VERSION}

WORKDIR /application
COPY application/package.json .
RUN npm install
