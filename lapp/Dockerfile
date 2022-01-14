
# FROM php:5.5.33-fpm-alpine
FROM php:7.4.22-fpm-alpine

RUN apk add --no-cache -U autoconf \
&& apk add --no-cache -U gcc \
&& apk add --no-cache -U make \
&& apk add --no-cache -U libc-dev \
&& apk add --no-cache -U rabbitmq-c \
&& apk add --no-cache -U rabbitmq-c-dev \
&& apk add --no-cache -U postgresql-dev \
&& apk del autoconf \
&& apk del make \
&& apk del gcc

RUN docker-php-ext-install pgsql

WORKDIR /var/www/html

