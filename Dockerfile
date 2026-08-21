FROM alpine:latest

# تحديث وتثبيت أدوات التحميل الأساسية
RUN apk update && apk add --no-cache wget ca-certificates

# تحميل أحدث إصدار مباشر من سورس Hysteria الرسمي
RUN wget -O /usr/bin/hysteria https://github.com/apernet/hysteria/releases/download/v2.6.0/hysteria-linux-amd64 && \
    chmod +x /usr/bin/hysteria

# نسخ ملف الإعدادات الخاص بك
COPY config.yaml /etc/hysteria/config.yaml

# فتح المنافذ المطلوبة
EXPOSE 8080/tcp 8080/udp

# أمر التشغيل النهائي
ENTRYPOINT ["/usr/bin/hysteria", "server", "-c", "/etc/hysteria/config.yaml"]
