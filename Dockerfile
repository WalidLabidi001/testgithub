FROM nginx:alpine
USER 100
COPY html /usr/share/nginx/html
