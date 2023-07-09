FROM ubuntu:18.04
MAINTAINER lemooljiang <jackeyjiang2015@gmail.com>

RUN apt update \
    && apt install -y git build-essential cmake libuv1-dev libmicrohttpd-dev libssl-dev libhwloc-dev \
    && git clone https://github.com/xmrig/xmrig.git \
    && cd xmrig \
    && mkdir build \
    && cd build \
    && cmake ..  \
    && make 

ENTRYPOINT ["/xmrig/build/xmrig"]
