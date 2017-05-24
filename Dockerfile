FROM node:6.10.3-alpine

RUN npm i -g wiki@0.11.3

EXPOSE 3000

RUN mkdir /root/.wiki/
VOLUME /root/.wiki/
WORKDIR /root/.wiki/

CMD ["wiki"]
