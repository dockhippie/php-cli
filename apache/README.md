# PHP Apache

[![](https://badge.imagelayers.io/webhippie/php-apache:latest.svg)](https://imagelayers.io/?images=webhippie/php-apache:latest 'Get your own badge on imagelayers.io')

These are docker images for [PHP](https://secure.php.net) running on an
[Apache container](https://registry.hub.docker.com/u/webhippie/apache/).


## Versions

* [latest](https://github.com/dockhippie/php/tree/master/apache)
  available as ```webhippie/php-apache:latest``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/php-apache/)


## Volumes

* /srv/www
* /etc/php7/custom.d


## Ports

* 8080


## Available environment variables

```bash
ENV PHP_MEMORY_LIMIT 512M
ENV PHP_POST_MAX_SIZE 2G
ENV PHP_UPLOAD_MAX_FILESIZE 2G
ENV PHP_MAX_EXECUTION_TIME 3600
ENV PHP_MAX_INPUT_TIME 3600
ENV PHP_DATE_TIMEZONE UTC
ENV PHP_COMPOSER_INSTALL true
```


## Inherited environment variables

```bash
ENV APACHE_HOSTNAME $HOSTNAME
ENV APACHE_WEBROOT /srv/www
```

```bash
ENV LOGSTASH_ENABLED false
ENV LOGSTASH_HOST logstash
ENV LOGSTASH_PORT 5043
ENV LOGSTASH_CA /etc/ssl/logstash/certs/ca.pem # As string or filename
ENV LOGSTASH_CERT /etc/ssl/logstash/certs/cert.pem # As string or filename
ENV LOGSTASH_KEY /etc/ssl/logstash/private/cert.pem # As string or filename
ENV LOGSTASH_TIMEOUT 15
ENV LOGSTASH_OPTS
```


## Contributing

Fork -> Patch -> Push -> Pull Request


## Authors

* [Thomas Boerger](https://github.com/tboerger)
* [Christoph Wiechert](https://github.com/psi-4ward)


## License

MIT


## Copyright

```
Copyright (c) 2015-2016 Thomas Boerger <http://www.webhippie.de>
```
