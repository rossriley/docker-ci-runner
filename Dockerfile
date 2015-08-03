FROM php:5.6-apache:latest
MAINTAINER riley.ross@gmail.com

RUN apt-get update && \
    apt-get install -y git && \
    gem install bundler
