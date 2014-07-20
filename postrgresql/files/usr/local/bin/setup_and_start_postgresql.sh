#!/bin/bash

set -e

chown -R postgres:postgres /etc/postgresql /var/lib/postgresql
chmod u=rwx,g=,o= /var/lib/postgresql

if [ ! -d /var/lib/postgresql/9.3/main ]; then
  pwgen --secure 16 > /var/lib/postgresql/pwfile
  sudo --set-home --user=postgres \
    /usr/lib/postgresql/9.3/bin/initdb --auth=trust --encoding=unicode \
    --pgdata=/var/lib/postgresql/9.3/main --pwfile=/var/lib/postgresql/pwfile \
    --username=postgres
fi

if [ -f /var/lib/postgresql/pwfile ]; then
  echo "PostgreSQL password: $(cat /var/lib/postgresql/pwfile)"
  echo "remove /var/lib/postgresql/pwfile when noted down"
fi

exec sudo --set-home --user=postgres \
  /usr/lib/postgresql/9.3/bin/postgres -D /var/lib/postgresql/9.3/main \
  -c config_file=/etc/postgresql/9.3/main/postgresql.conf
