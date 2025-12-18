#!/bin/bash
set -e

cd /opt/app
nohup java -jar *.jar --server.port=80 > /var/log/app.log 2>&1 &
