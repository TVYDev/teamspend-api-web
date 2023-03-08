FROM php:8.1-fpm

RUN apt-get update \
    && apt-get install -y \
        libicu-dev \
        libpq-dev \
        libzip-dev

RUN docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql \
    && docker-php-ext-install intl pdo pdo_pgsql pgsql zip bcmath pcntl exif
    
RUN apt-get -y autoremove \
    && apt-get clean