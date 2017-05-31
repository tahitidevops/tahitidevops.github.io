FROM nginx:alpine

VOLUME /usr/share/nginx/html

COPY public /usr/share/nginx/html
COPY docker/default.conf /etc/nginx/conf.d/default.conf

