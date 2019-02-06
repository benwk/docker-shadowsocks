# shadowsocks
#
# VERSION 0.0.3

FROM ubuntu:16.04
MAINTAINER Benjamin Zhang <walker.iben@me.com>

RUN apt-get update && \
    apt-get install -y python-pip libsodium18
RUN pip install shadowsocks

# Configure container to run as an executable
ENTRYPOINT ["/usr/local/bin/ssserver"]
