#!/bin/sh
redis-server --daemonize yes
/usr/bin/ssmgr -c /home/config.yml
