FROM ruby:2.4.1
MAINTAINER diogonoda@hotmail.com

ENV RAILS_VERSION 5.0.1
ENV APP_HOME /usr/src/app

RUN apt-get update \
 && apt-get install -y nodejs --no-install-recommends \
                       sqlite3 --no-install-recommends \
 && rm -rf /var/lib/apt/lists/* \
 && gem install rails --version "$RAILS_VERSION"

WORKDIR $APP_HOME
VOLUME $APP_HOME
ADD . $APP_HOME/

RUN bundle install
