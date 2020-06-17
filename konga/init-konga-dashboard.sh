#!/bin/bash

docker run --rm pantsel/konga:latest \
	-c prepare \
	-a postgres \
	-u postgresql://$PG_USER:$PG_PWD@$PG_IP:$PG_PORT/konga