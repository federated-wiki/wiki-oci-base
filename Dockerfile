FROM node:10-alpine

RUN npm i -g wiki@0.16.1

EXPOSE 3000

RUN mkdir /root/.wiki/
VOLUME /root/.wiki/
WORKDIR /root/.wiki/

CMD ["wiki"]
