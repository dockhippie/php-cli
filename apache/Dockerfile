FROM webhippie/apache:latest
MAINTAINER Thomas Boerger <thomas@webhippie.de>

EXPOSE 8080

WORKDIR /srv/www
CMD ["/bin/s6-svscan", "/etc/s6"]

RUN apk update && \
  apk add \
    php5-apache2 \
    php5-cli \
    php5-ctype \
    php5-curl \
    php5-dom \
    php5-gd \
    php5-iconv \
    php5-intl \
    php5-json \
    php5-mcrypt \
    php5-memcache \
    php5-mysql \
    php5-mysqli \
    php5-openssl \
    php5-pdo \
    php5-pdo_mysql \
    php5-pdo_pgsql \
    php5-pdo_sqlite \
    php5-pear \
    php5-pgsql \
    php5-phar \
    php5-sqlite3 \
    php5-xml \
    php5-zip \
    php5-zlib && \
  rm -rf \
    /var/cache/apk/* \
    /etc/php5/*

ADD rootfs /

RUN curl -sS https://getcomposer.org/installer \
  | php -- --install-dir=/usr/bin --filename=composer
