FROM php:5.6-apache
MAINTAINER riley.ross@gmail.com

RUN apt-get update && \
    apt-get install -y git ruby-full && \
    gem install bundler
    
RUN docker-php-ext-install mbstring && docker-php-ext-install pdo_pgsql && docker-php-ext-install gd
    
# install composer to path
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
