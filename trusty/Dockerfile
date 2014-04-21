FROM ubuntu:precise

MAINTAINER Piotr Szotkowski <chastell@chastell.net>

ENV DEBIAN_FRONTEND noninteractive

RUN rm /etc/apt/sources.list
RUN echo "deb http://archive.ubuntu.com/ubuntu trusty          main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb http://archive.ubuntu.com/ubuntu trusty-security main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb http://archive.ubuntu.com/ubuntu trusty-updates  main restricted universe multiverse" >> /etc/apt/sources.list
RUN apt-get update && apt-get --assume-yes dist-upgrade
