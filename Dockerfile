FROM node:6.11

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ENV NODE_ENV production
ADD package.json /usr/src/app/
RUN npm install && npm cache clean
COPY . /usr/src/app

ENTRYPOINT ["bin/aws-es-proxy", "--"]
