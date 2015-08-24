FROM webhippie/alpine:latest
MAINTAINER Thomas Boerger <thomas@webhippie.de>

RUN apk update && \
  apk add \
    apache2 \
    apache2-webdav \
    apache2-utils \
    php-apache2 \
    php-cli \
    php-ctype \
    php-curl \
    php-dom \
    php-gd \
    php-iconv \
    php-intl \
    php-json \
    php-mcrypt \
    php-memcache \
    php-mysql \
    php-mysqli \
    php-openssl \
    php-pdo \
    php-pdo_mysql \
    php-pdo_pgsql \
    php-pdo_sqlite \
    php-pear \
    php-pgsql \
    php-phar \
    php-sqlite3 \
    php-xml \
    php-zip \
    php-zlib && \
  rm -rf /var/cache/apk/* && \
  rm -rf /etc/php/* && \
  rm -rf /etc/apache2/* && \
  chsh -s /bin/bash apache

VOLUME ["/etc/apache2/custom.d", "/etc/php/custom.d"]

ADD rootfs /
EXPOSE 80

RUN curl -sS https://getcomposer.org/installer \
  | php -- --install-dir=/usr/bin --filename=composer

WORKDIR /app
CMD ["/usr/bin/s6-svscan", "/etc/s6"]
