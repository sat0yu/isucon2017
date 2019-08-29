ARG RUBY_VERSION
FROM ruby:${RUBY_VERSION}

WORKDIR /app

RUN mkdir -p /vendor/bundle
ENV BUNDLE_GEMFILE=/app/Gemfile BUNDLE_PATH=/vendor/bundle

RUN apt-get update && gem install bundler --pre

ADD . /app

RUN bundle install --frozen
