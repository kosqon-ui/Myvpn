FROM tobyxg/hysteria:latest

EXPOSE 8080

CMD ["server", "-c", "/etc/hysteria/config.yaml"]
