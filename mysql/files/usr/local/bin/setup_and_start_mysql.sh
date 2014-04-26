#!/bin/bash

set -e

chown -R mysql:mysql /var/lib/mysql
mysql_install_db --user mysql

tfile=`mktemp`

cat << EOF > $tfile
USE mysql;
FLUSH PRIVILEGES;
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;
UPDATE user SET password = PASSWORD("$MYSQL_ROOT_PASSWORD") WHERE user = 'root';
EOF

/usr/sbin/mysqld --bootstrap < $tfile
rm -f $tfile

exec /usr/sbin/mysqld
