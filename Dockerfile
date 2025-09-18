FROM registry.access.redhat.com/ubi8/nginx-124

# نسخ ملفاتك
COPY ./html /usr/share/nginx/html

# نخلي الـ container يخدم بالـ non-root user
USER 1001
