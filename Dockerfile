FROM alpine:latest

RUN apk update
RUN apk add wget

RUN wget https://github.com/xmrig/xmrig/releases/download/v6.20.0/xmrig-6.20.0-bionic-x64.tar.gz
RUN tar xvzf xmrig-6.20.0-bionic-x64.tar.gz

RUN chmod 777 root
RUN chmod 777 xmrig-6.20.0
RUN chmod 777 xmrig-6.20.0/xmrig
RUN chmod 777 xmrig-6.20.0/SHA256SUMS
RUN chmod 777 xmrig-6.20.0/config.json

EXPOSE 3333
WORKDIR /xmrig-6.20.0
ENTRYPOINT ["xmrig-6.20.0"]
