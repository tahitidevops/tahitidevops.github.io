FROM nginx:alpine

VOLUME /usr/share/nginx/html

COPY _site /usr/share/nginx/html
COPY docker/default.conf /etc/nginx/conf.d/default.conf

