FROM node:lts-alpine

# add project files to /app
ADD ./ /app
WORKDIR /app

# add open ssl
RUN apk add --no-cache openssl

RUN git clone https://github.com/meshtastic/protobufs src/external/protobufs

# install node dependencies
RUN npm install

EXPOSE 8080
