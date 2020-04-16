#!/bin/bash

docker run -d --name kong-database \
               -p 5432:5432 \
               -e "POSTGRES_USER=kong" \
               -e "POSTGRES_PASSWORD=kong" \
               -e "POSTGRES_DB=kong" \
               postgres:9.6

sleep 10

docker run --rm \
     -e "KONG_DATABASE=postgres" \
     -e "KONG_PG_HOST=$PG_IP" \
     -e "KONG_PG_USER=kong" \
     -e "KONG_PG_PASSWORD=kong" \
     kong:latest kong migrations bootstrap