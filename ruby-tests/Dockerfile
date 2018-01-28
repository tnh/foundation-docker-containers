FROM ruby:2.5.0-alpine3.7

RUN apk add --update docker && \
    rm -rf /var/cache/apk/*

RUN gem install bundler 
RUN mkdir -p /build && cd /build
WORKDIR /build
