FROM alpine:latest

# تثبيت برنامج tinyproxy الخفيف
RUN apk add --no-cache tinyproxy

# نسخ ملف الإعدادات إلى مكانه داخل الحاوية
COPY tinyproxy.conf /etc/tinyproxy/tinyproxy.conf

# تشغيل البروكسي (Foreground mode) ليعمل مع Cloud Run
CMD ["tinyproxy", "-d"]
