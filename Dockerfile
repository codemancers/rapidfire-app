FROM ruby:2.6.3-alpine

RUN apk add --no-cache build-base bash nodejs postgresql-dev yarn tzdata

WORKDIR /app

RUN gem install bundler

COPY Gemfile ./
COPY Gemfile.lock ./
RUN bundle install

COPY package.json ./
COPY yarn.lock ./
RUN yarn install

ENV BUNDLE_GEMFILE=./Gemfile
ENV PATH=/app/bin:$PATH

EXPOSE 3000
