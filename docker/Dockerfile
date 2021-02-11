FROM php:7.4-fpm
WORKDIR /var/www

# Install dependencies

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
        apt-utils \
        libicu-dev \
        libz-dev \
        libpq-dev \
        libjpeg-dev \
        libsqlite3-dev \
        libgmp-dev \
        libzip-dev \
        zip \
        unzip


RUN apt-get update \
  && apt-get install -y --no-install-recommends \
        libsqlite3-dev \
        libsqlite3-0 \
        libfreetype6-dev \
        libssl-dev \
        libxslt-dev \
      	libcurl3-dev \
        libbz2-dev \
        libmhash-dev \
        libjpeg62-turbo-dev \
        curl \
        sqlite3 \
        libmagickwand-dev \
        libxml2-dev \
        libonig-dev \
        yarn

#Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /app/


# Install various PHP extensions
RUN  pecl install \
     redis \
     imagick \
     xdebug

RUN docker-php-ext-enable imagick redis xdebug

RUN docker-php-ext-install calendar curl exif iconv mbstring pdo pdo_mysql pcntl tokenizer xml gd zip bcmath opcache mysqli soap





########SOME CONFIG ######
RUN set -x \
        && rm -rf /tmp/* \
        && rm -rf /usr/src/* \
        && rm -rf /var/lib/apt/lists/*
      #  ADD ./docker/php/php.ini /usr/local/etc/php/conf.d/40-custom.ini
    #    ADD ./docker/php/php.ini /usr/local/etc/php/conf.d/local.ini
        WORKDIR /var/www





RUN rm -rf /tmp/pear
RUN apt-get clean && rm -rf /var/lib/apt/lists/*



EXPOSE 9000
WORKDIR /var/www
