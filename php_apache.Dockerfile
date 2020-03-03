FROM php:7.4.3-apache

COPY ./composer.json /var/www/

WORKDIR /var/www/

RUN docker-php-ext-install mysqli && \\
    docker-php-ext-enable mysqli && \\
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && \\
    composer install

WORKDIR /var/www/html
