FROM php:7.4.3-apache

COPY ./src/php-profile-rest-api /var/www/html

RUN docker-php-ext-install pdo_mysql && \
    apt update && \
    apt install unzip && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && \
    composer install && \
    a2enmod rewrite && \
    service apache2 restart