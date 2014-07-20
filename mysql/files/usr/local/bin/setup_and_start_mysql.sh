#!/bin/bash

set -e

chown --recursive mysql:mysql /var/lib/mysql
chmod u=rwx,g=,o= /var/lib/mysql

if [ ! -d /var/lib/mysql/mysql ]; then

  mysql_install_db --user=mysql

  /usr/sbin/mysqld --bootstrap << EOF
FLUSH PRIVILEGES;
GRANT ALL ON *.* TO 'root'@'172.17.%.%' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD' WITH GRANT OPTION;
EOF

fi

mysqld_safe --skip-syslog
