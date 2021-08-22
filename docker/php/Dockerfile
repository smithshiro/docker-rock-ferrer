FROM php:7.4-fpm

ENV LANG ja_JP.UTF-8
ENV LC_ALL C

RUN cd /usr/bin && curl -s http://getcomposer.org/installer | php && ln -s /usr/bin/composer.phar /usr/bin/composer

RUN apt update \
    && apt install -y \
      libfreetype6-dev \
      libjpeg62-turbo-dev \
      libpng-dev \
      libzip-dev \
      libonig-dev \
      zip unzip vim git pgp locales wget \
      python3-pip \
      redis \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd pdo_mysql mysqli zip mbstring
RUN pip3 install mycli

COPY php.ini /usr/local/etc/php/php.ini
RUN yes '' | pecl install redis
