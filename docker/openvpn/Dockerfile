FROM alpine

RUN apk update && apk add openvpn && rm -rf /var/cache/apk
ADD *.pem openvpn.conf /etc/openvpn/
ADD entry-point.sh fetch-crl.sh /


EXPOSE 1194/udp

ENTRYPOINT ["/entry-point.sh"]
CMD ["--config", "/etc/openvpn/openvpn.conf"]
