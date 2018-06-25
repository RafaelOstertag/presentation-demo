#!/bin/sh

set -e

trap '{ docker exec demo_client_1 pkill openvpn ; }' EXIT

docker cp testfile.conf demo_client_1:/
docker exec demo_client_1 openvpn --config /testfile.conf
