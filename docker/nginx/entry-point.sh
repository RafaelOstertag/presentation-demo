#!/bin/sh

vpn_gw=`getent hosts openvpn | awk '{ print $1 }'`
ip r add 10.0.0.0/24 via ${vpn_gw}

exec "$@"
