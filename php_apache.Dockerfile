FROM php:7.4.3-apache

COPY ./composer.json /var/www/

WORKDIR /var/www/

RUN docker-php-ext-install mysqli && apt update && apt install unzip
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN composer install

WORKDIR /var/www/html
