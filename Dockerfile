FROM alpine:latest

# تثبيت الحزم الأساسية وأحدث إصدار من Hysteria
RUN apk add --no-cache wget curl && \
    wget -O /usr/bin/hysteria https://github.com/apernet/hysteria/releases/download/v2.6.0/hysteria-linux-amd64 && \
    chmod +x /usr/bin/hysteria

# نسخ ملف الإعدادات
COPY config.yaml /etc/hysteria/config.yaml

EXPOSE 8080

CMD ["/usr/bin/hysteria", "server", "-c", "/etc/hysteria/config.yaml"]
