#!/bin/bash

docker run -d --name kong \
     -e "KONG_DATABASE=postgres" \
     -e "KONG_PG_HOST=$PG_IP" \
     -e "KONG_PG_USER=kong" \
     -e "KONG_PG_PASSWORD=kong" \
     -e "KONG_PROXY_ACCESS_LOG=/dev/stdout" \
     -e "KONG_ADMIN_ACCESS_LOG=/dev/stdout" \
     -e "KONG_PROXY_ERROR_LOG=/dev/stderr" \
     -e "KONG_ADMIN_ERROR_LOG=/dev/stderr" \
     -e "KONG_ADMIN_LISTEN=0.0.0.0:8001, 0.0.0.0:8444 ssl" \
     -p 80:8000 \
     -p 443:8443 \
     -p 8001:8001 \
     -p 8444:8444 \
     kong:latest