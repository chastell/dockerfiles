FROM phusion/baseimage:0.9.15

MAINTAINER Piotr Szotkowski <chastell@chastell.net>

ENV DEBIAN_FRONTEND noninteractive
ENV HOME /root

CMD ["/sbin/my_init"]

ADD files /

RUN apt-get update                                          && \
    apt-get --assume-yes dist-upgrade                       && \
    apt-get install --assume-yes software-properties-common && \
    apt-get autoremove                                      && \
    apt-get clean                                           && \
    rm -fr /tmp/* /var/tmp/*
