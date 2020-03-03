FROM php:7.4.3-apache

COPY ./rest_php /var/www/html

RUN docker-php-ext-install mysqli pdo_mysql && apt update && apt install unzip
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN composer install
