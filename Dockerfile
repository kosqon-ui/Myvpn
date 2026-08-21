FROM apernet/hysteria:v2.6.0

COPY config.yaml /etc/hysteria/config.yaml

EXPOSE 8080/tcp 8080/udp

ENTRYPOINT ["/usr/bin/hysteria", "server", "-c", "/etc/hysteria/config.yaml"]
