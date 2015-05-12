FROM webhippie/alpine:latest
MAINTAINER Christoph Wiechert <wio@psitrax.de>

RUN apk update \
    && apk add nginx \
      php-fpm php-json php-zlib php-xml php-pdo php-phar php-openssl \
      php-pdo_mysql php-mysqli php-pdo_pgsql php-pgsql php-dom \
      php-gd php-iconv php-mcrypt php-curl php-sqlite3 php-zip

# fix php-fpm "Error relocating /usr/bin/php-fpm: __flt_rounds: symbol not found" bug
RUN apk add -u musl
RUN rm -rf /var/cache/apk/*

ADD rootfs /

EXPOSE 80
VOLUME ["/webroot"]

CMD ["/usr/bin/s6-svscan","/etc/s6"]
