FROM php:5.6-apache
RUN apt-get update && apt-get install -y libzip-dev libpq-dev libicu-dev g++
RUN apt-get install -y apt-utils
RUN apt-get install -y libmcrypt-dev

RUN docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql
RUN docker-php-ext-install pdo pdo_pgsql pgsql
