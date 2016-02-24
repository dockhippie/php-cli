FROM webhippie/alpine:latest
MAINTAINER Thomas Boerger <thomas@webhippie.de>

RUN apk update && \
  mkdir -p \
    /srv/www && \
  groupadd \
    -g 1000 \
    caddy && \
  useradd \
    -u 1000 \
    -d /srv/www \
    -g caddy \
    -s /bin/bash \
    -m \
    caddy && \
  apk add \
    php-fpm \
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
  rm -rf \
    /var/cache/apk/* \
    /etc/php/*

EXPOSE 8080
ENTRYPOINT ["/usr/bin/entrypoint"]
CMD ["/bin/s6-svscan", "/etc/s6"]
VOLUME ["/etc/php/custom.d"]

ADD rootfs /
WORKDIR /srv/www

RUN curl -sS https://getcomposer.org/installer \
  | php -- --install-dir=/usr/bin --filename=composer
