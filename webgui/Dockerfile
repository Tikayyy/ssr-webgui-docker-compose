FROM ubuntu:18.04

RUN apt-get update && \
    export DEBIAN_FRONTEND=noninteractive && \
    apt-get install redis-server tzdata iproute2 curl git sudo software-properties-common python-pip -y && \
    pip install git+https://github.com/shadowsocks/shadowsocks.git@master && \
    curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
    apt-get install -y nodejs shadowsocks-libev && \
    npm i -g shadowsocks-manager --unsafe-perm && \
    echo "Europe/Moscow" > /etc/timezone && \
    rm /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata

COPY ./config.yml /home/config.yml
COPY ./entrypoint.sh /home/entrypoint.sh
RUN chmod +x /home/entrypoint.sh
CMD ["/home/entrypoint.sh"]
