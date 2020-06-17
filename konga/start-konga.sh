#!/bin/bash

docker run -d -p 1337:1337 \
        --name konga \
        -e "NODE_ENV=production"  \
        -e "DB_ADAPTER=postgres" \
        -e "DB_URI=postgresql://$PG_USER:$PG_PWD@$PG_IP:$PG_PORT/konga" \
        pantsel/konga