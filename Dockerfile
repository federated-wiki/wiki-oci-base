FROM node:12-alpine

RUN apk add --no-cache bash git
RUN npm i -g wiki@0.21.1

RUN mkdir /root/.wiki/
VOLUME /root/.wiki/
WORKDIR /root/.wiki/

EXPOSE 3000
CMD ["wiki"]

