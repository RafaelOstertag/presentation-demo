#!/bin/sh

while true
do
    wget -q -O /etc/openvpn/crl.pem http://anath-server:8080/crl.pem
    sleep 3
done
