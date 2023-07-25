#!/bin/bash

set -e

mongod &
MONGO_PID=$!

if [ $(mongosh --eval 'db.getMongo().getDBNames().indexOf("explainshell")' --quiet) -lt 0 ]; then
  mongorestore --archive --gzip < /tmp/dump.gz
else
  echo "INFO: explainshell database exists -- restore skipped"
fi

kill $MONGO_PID
