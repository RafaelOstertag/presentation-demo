FROM fedora:27

RUN dnf install -y iproute procps openvpn coreutils iputils firefox

ADD hover /

ENTRYPOINT ["/hover"]
