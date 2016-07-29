FROM node:6.3.1

RUN npm install wiki@0.9.3 -g

ENV PORT=5000
EXPOSE 5000

ENTRYPOINT wiki -p $PORT -f
