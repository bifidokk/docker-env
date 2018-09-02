FROM php:fpm-alpine

###########################################################################
# xDebug:
###########################################################################

RUN apk add --no-cache $PHPIZE_DEPS \
    && pecl install xdebug-2.6.0 \
    && docker-php-ext-enable xdebug

COPY ./xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini

CMD ["php-fpm"]

EXPOSE 9000
