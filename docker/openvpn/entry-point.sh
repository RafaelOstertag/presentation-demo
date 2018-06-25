#!/bin/sh

mkdir -p /dev/net && mknod /dev/net/tun c 10 200
touch /etc/openvpn/crl.pem

/fetch-crl.sh &

/usr/sbin/openvpn "$@"
