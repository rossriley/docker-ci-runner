FROM php:5.6-apache
MAINTAINER riley.ross@gmail.com

RUN apt-get update && \
    apt-get install -y git ruby-full && \
    gem install bundler
    
# install composer to path
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
