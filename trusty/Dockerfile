FROM phusion/baseimage:0.9.15

MAINTAINER Piotr Szotkowski <chastell@chastell.net>

ENV DEBIAN_FRONTEND noninteractive
ENV HOME /root

CMD ["/sbin/my_init"]

RUN rm /etc/apt/sources.list
RUN echo "deb http://archive.ubuntu.com/ubuntu trusty          main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb http://archive.ubuntu.com/ubuntu trusty-security main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb http://archive.ubuntu.com/ubuntu trusty-updates  main restricted universe multiverse" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get --assume-yes dist-upgrade
RUN apt-get install --assume-yes software-properties-common
RUN apt-get autoremove
RUN apt-get clean
RUN rm -fr /var/lib/apt/lists/* /tmp/* /var/tmp/*
