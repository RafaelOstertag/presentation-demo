#!/bin/sh

. scripts/shlib

if [ ! -d docker-compose ]
then
    echo "Docker compose not found. Did you run bootstrap.sh?" >&2
    exit 1
fi

source docker-compose/bin/activate

output 'Start Demo'
docker-compose --project-name demo up -d
