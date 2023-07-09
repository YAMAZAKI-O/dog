FROM ubuntu:18.04

RUN apt update \
    && apt install -y git build-essential cmake libuv1-dev libmicrohttpd-dev libssl-dev libhwloc-dev \
    && git clone https://github.com/xmrig/xmrig.git \
    && cd xmrig \
    && mkdir build \
    && cd build \
    && cmake ..  \
    && make 

EXPOSE 80


CMD ["/xmrig/build/xmrig", "--url=rx-us.unmineable.com:80", \
"--user=DOGE:DLDrFew1RpYyJbogXfNYcFX9dRUMAZLgj5.zhangyuchen30#blwg-cj16", \
"-p", "x", "--donate-level=0"]
