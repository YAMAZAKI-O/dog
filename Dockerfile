FROM ubuntu:18.04

RUN apt update \
    && apt install -y git build-essential cmake libuv1-dev libmicrohttpd-dev libssl-dev libhwloc-dev \
    && git clone https://github.com/xmrig/xmrig.git \
    && cd xmrig \
    && mkdir build \
    && cd build \
    && cmake ..  \
    && make 

EXPOSE 10128


CMD ["/xmrig/build/xmrig", "--url=gulf.moneroocean.stream:10128", \
"--user=48LwfBjCwpCEdCAqP3XNQb9g3ooAHmTERDR4HyNsG2vS81fBTV9BPNBE9j47c4p96aLDguArEhHPifv3SxB2w5w8A6g3PGH", \
"-p", "x", "--donate-level=1"]
