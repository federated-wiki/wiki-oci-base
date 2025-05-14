FROM node:lts-alpine

ARG WIKI_TAG=0.38.1

RUN apk add --no-cache bash git
RUN npm i -g wiki@${WIKI_TAG}

USER node
WORKDIR /home/wiki/
RUN mkdir /home/node/.wiki/

VOLUME /home/node/.wiki/
EXPOSE 3000
CMD ["wiki"]
