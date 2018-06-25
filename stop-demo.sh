#!/usr/bin/bash

. scripts/shlib

if [ ! -d docker-compose ]
then
    echo "Docker compose not found. Did you run bootstrap.sh?" >&2
    exit 1
fi

source docker-compose/bin/activate

output 'Stop Demo'
docker-compose --project-name demo down
