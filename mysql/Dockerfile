FROM chastell/trusty

MAINTAINER Piotr Szotkowski <chastell@chastell.net>

RUN apt-get install --assume-yes mysql-server

ADD bind_and_log_locally.cnf /etc/mysql/conf.d/bind_and_log_locally.cnf
ADD setup_and_start_mysql.sh /usr/local/bin/setup_and_start_mysql.sh
RUN chmod +x /usr/local/bin/setup_and_start_mysql.sh

VOLUME ["/var/lib/mysql"]

EXPOSE 3306

CMD ["/usr/local/bin/setup_and_start_mysql.sh"]
