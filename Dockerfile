FROM php:5.6-apache
MAINTAINER riley.ross@gmail.com

RUN apt-get update && \
    apt-get install -y git ruby-full libpq-dev git libpng-dev libjpeg62-turbo-dev libfreetype6-dev wget zlib1g-dev && \
    gem install bundler
    
RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/
RUN docker-php-ext-install mbstring && docker-php-ext-install gd && docker-php-ext-install zip
    
# install composer to path
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
