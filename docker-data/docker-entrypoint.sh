#!/bin/sh

if [ "$1" = 'redis-cluster' ]; then
    sleep 10
    echo "yes" | ruby /redis/src/redis-trib.rb create --replicas 0 173.17.0.2:7000 173.17.0.3:7001 173.17.0.4:7002
    echo "DONE"
else
  exec "$@"
fi
