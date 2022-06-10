FROM alpine
RUN apk update && apk upgrade
RUN apk add nodejs
RUN apk add npm
RUN apk add git
RUN cd /root; git clone https://github.com/kendallgoto/switchbota.git && cd switchbota/server && npm install
CMD node /root/switchbota/server/index.js