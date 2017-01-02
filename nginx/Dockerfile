FROM webhippie/nginx:latest
MAINTAINER Thomas Boerger <thomas@webhippie.de>

EXPOSE 8080

WORKDIR /srv/www
CMD ["/bin/s6-svscan", "/etc/s6"]

RUN apk update && \
  apk add \
    php7 \
    php7-fpm \
    php7-ctype \
    php7-curl \
    php7-dom \
    php7-gd \
    php7-iconv \
    php7-intl \
    php7-json \
    php7-mcrypt \
    php7-memcached@testing \
    php7-mysqli \
    php7-mysqlnd \
    php7-openssl \
    php7-pdo \
    php7-pdo_mysql \
    php7-pdo_pgsql \
    php7-pdo_sqlite \
    php7-pear \
    php7-pgsql \
    php7-phar \
    php7-sqlite3 \
    php7-xml \
    php7-zip \
    php7-zlib && \
  ln -sf \
    /usr/bin/php7 \
    /usr/bin/php && \
  rm -rf \
    /var/cache/apk/* \
    /etc/php7/*

ADD rootfs /

RUN curl -sS https://getcomposer.org/installer \
  | php -- --install-dir=/usr/bin --filename=composer
