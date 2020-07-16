FROM ruby:2.3

RUN gem install jekyll

VOLUME /app
EXPOSE 4000

WORKDIR /app
CMD ["jekyll", "serve", "--host=0.0.0.0", "-w", "--incremental"]
