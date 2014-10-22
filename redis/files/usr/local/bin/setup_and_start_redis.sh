#!/bin/bash

set -euo pipefail

chown --recursive redis:redis /var/lib/redis
exec sudo --set-home --user=redis /usr/bin/redis-server /etc/redis/redis.conf
