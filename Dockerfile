FROM node:4-slim

MAINTAINER Lukas Pustina <lukas.pustina@gmail.com>

RUN npm install -g coffee-script yo generator-hubot
RUN	adduser --home /carl carl

USER	carl
WORKDIR /carl

ENV HUBOT_NAME "Carl"
ENV HUBOT_OWNER "Lukas Pustina <lukas.pustina@gmail.com>"
ENV HUBOT_DESCRIPTION "Your friendly Ops Minion"

RUN yo hubot --name="$HUBOT_NAME" --owner="$HUBOT_OWNER" --description="$HUBOT_DESCRIPTION" --adapter=slack --defaults

# Install Scripts
RUN npm install --save hubot-diagnostics
RUN npm install --save hubot-auth
RUN npm install --save hubot-http-status
RUN npm install --save hubot-seen
RUN npm install --save hubot-calculator
RUN npm install --save hubot-bosun
COPY docker/external-scripts.json /carl/

ENTRYPOINT ["/bin/sh", "-c", "cd ~; ./bin/hubot -a slack;"]

