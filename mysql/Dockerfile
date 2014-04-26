FROM chastell/trusty

MAINTAINER Piotr Szotkowski <chastell@chastell.net>

RUN apt-get install --assume-yes mysql-server

ADD files/etc /etc
ADD files/usr /usr
RUN chmod +x /usr/local/bin/setup_and_start_mysql.sh

VOLUME ["/var/lib/mysql"]

EXPOSE 3306

CMD ["/usr/local/bin/setup_and_start_mysql.sh"]
