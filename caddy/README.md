# PHP Caddy

[![](https://images.microbadger.com/badges/image/webhippie/php-caddy.svg)](https://microbadger.com/images/webhippie/php-caddy "Get your own image badge on microbadger.com")

These are docker images for [PHP](https://secure.php.net) running on a [Caddy container](https://registry.hub.docker.com/u/webhippie/caddy/).


## Versions

* [latest](https://github.com/dockhippie/php/tree/master/caddy) available as ```webhippie/php-caddy:latest``` at [Docker Hub](https://registry.hub.docker.com/u/webhippie/php-caddy/)


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
ENV PHP_LOG_LEVEL warning
ENV PHP_MAX_CHILDREN 75
ENV PHP_MAX_REQUESTS 500
ENV PHP_PROCESS_IDLE_TIMEOUT 10s
ENV PHP_COMPOSER_INSTALL true
```


## Inherited environment variables

* [webhippie/caddy](https://github.com/dockhippie/caddy#available-environment-variables)
* [webhippie/alpine](https://github.com/dockhippie/alpine#available-environment-variables)


## Contributing

Fork -> Patch -> Push -> Pull Request


## Authors

* [Thomas Boerger](https://github.com/tboerger)
* [Christoph Wiechert](https://github.com/psi-4ward)


## License

MIT


## Copyright

```
Copyright (c) 2015-2017 Thomas Boerger <http://www.webhippie.de>
```
