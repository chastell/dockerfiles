FROM chastell/trusty

MAINTAINER Piotr Szotkowski <chastell@chastell.net>

RUN apt-get install --assume-yes nginx

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

EXPOSE 80

CMD nginx
