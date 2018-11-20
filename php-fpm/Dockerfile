FROM php:fpm-alpine

RUN apk add --no-cache libpng libpng-dev libjpeg-turbo-dev
RUN docker-php-ext-configure gd \
--with-jpeg-dir=/usr/include/
RUN docker-php-ext-install gd

RUN docker-php-ext-install pdo_mysql

RUN apk add --no-cache --virtual .build-deps \
    g++ make autoconf

RUN pecl install -o -f redis \
    && docker-php-ext-enable redis

RUN apk del --purge .build-deps

###########################################################################
# xDebug:
###########################################################################

RUN apk add --no-cache $PHPIZE_DEPS \
    && pecl install xdebug-2.6.0 \
    && docker-php-ext-enable xdebug

COPY ./xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini

CMD ["php-fpm"]

EXPOSE 9000
