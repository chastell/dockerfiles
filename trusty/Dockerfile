FROM phusion/baseimage:0.9.15

MAINTAINER Piotr Szotkowski <chastell@chastell.net>

ENV DEBIAN_FRONTEND noninteractive
ENV HOME /root

CMD ["/sbin/my_init"]

RUN rm /etc/apt/sources.list
RUN echo "deb http://archive.ubuntu.com/ubuntu trusty          main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb http://archive.ubuntu.com/ubuntu trusty-security main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb http://archive.ubuntu.com/ubuntu trusty-updates  main restricted universe multiverse" >> /etc/apt/sources.list
RUN apt-get update                                          && \
    apt-get --assume-yes dist-upgrade                       && \
    apt-get install --assume-yes software-properties-common && \
    apt-get autoremove                                      && \
    apt-get clean                                           && \
    rm -fr /tmp/* /var/tmp/*
