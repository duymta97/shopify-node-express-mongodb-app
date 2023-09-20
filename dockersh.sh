#!/bin/bash

_CONTAINER=node_server
_TASK="$1"
_USER="$2"
_CMD="$3"

if [ -z "$_CONTAINER" ]; then
    echo "$0 CONTAINER TASK USER CMD"
    exit 1
fi

if [ -z "$_USER" ]; then
    _USER=root
fi

build () {
    docker compose -f docker-compose.yml up --build -d
}

ssh_to_container () {
    docker exec -it -u $_USER $_CONTAINER bash
}

stop_container () {
    docker-compose down
}

start_container () {
    docker-compose up
}

if [ "$_TASK" == "build" ]
then
    build
fi

if [ "$_TASK" == "start" ]
then
    start_container
fi

if [ "$_TASK" == "stop" ]
then
    stop_container
fi

if [ "$_TASK" == "ssh" ]
then
    ssh_to_container
    exit 1
fi