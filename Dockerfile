FROM node:20-slim

RUN apt update && apt install -y openssl procps

USER node

RUN mkdir /home/node/app

WORKDIR /home/node/app

CMD [ "/home/node/app/.docker/start-dev.sh" ]