FROM node:10-alpine

RUN npm i -g wiki@0.21.0

RUN mkdir /root/.wiki/
VOLUME /root/.wiki/
WORKDIR /root/.wiki/

EXPOSE 3000
CMD ["wiki"]

