FROM node:lts-alpine

ARG WIKI_TAG=0.34.0

RUN apk add --no-cache bash git
RUN npm i -g wiki@${WIKI_TAG}

USER node
WORKDIR /home/wiki/
RUN mkdir /home/node/.wiki/

VOLUME /home/node/.wiki/
EXPOSE 3000
CMD ["wiki"]
