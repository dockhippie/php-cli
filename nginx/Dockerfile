FROM webhippie/alpine:latest
MAINTAINER Christoph Wiechert <wio@psitrax.de>

RUN apk add --update \
  nginx \
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
  rm -rf /var/cache/apk/*

VOLUME ["/app"]

ADD rootfs /
EXPOSE 6379

WORKDIR /app
CMD ["/usr/bin/s6-svscan","/etc/s6"]
