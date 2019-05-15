#!/bin/bash

docker run -d \
	--restart=always \
	--name=robotarium_mqtt_broker \
	-p $1:1884:1883 \
	-p $1:8083:8083 \
	-p $1:8883:8883 \
	-p $1:8084:8084 \
	-p $1:18083:18083 \
	emqx/emqx:latest
