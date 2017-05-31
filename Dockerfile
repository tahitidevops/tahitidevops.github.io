FROM ruby:2.3 AS build

RUN gem install jekyll
ADD . /app
WORKDIR /app
RUN jekyll build


FROM nginx:alpine

VOLUME /usr/share/nginx/html

COPY --from=build /app/public /usr/share/nginx/html
COPY docker/default.conf /etc/nginx/conf.d/default.conf

