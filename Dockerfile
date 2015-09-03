FROM debian:8

MAINTAINER Lubos Rendek <web@linuxconfig.org>

RUN apt-get update
RUN apt-get install -y rygel

ADD rygel.conf /root/.config/rygel.conf

EXPOSE 6887/tcp 1900/udp

CMD ["/usr/bin/rygel" ]


