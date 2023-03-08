FROM php:8.1-fpm

RUN apt-get update \
    && apt-get install -y libpq-dev
    
RUN docker-php-ext-install pdo pdo_pgsql

RUN apt-get autoremove --purge -y libpq-dev \
    && apt-get clean