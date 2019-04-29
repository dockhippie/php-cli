# PHP CLI

[![Build Status](https://cloud.drone.io/api/badges/dockhippie/php-cli/status.svg)](https://cloud.drone.io/dockhippie/php-cli)
[![](https://images.microbadger.com/badges/image/webhippie/php-cli.svg)](https://microbadger.com/images/webhippie/php-cli "Get your own image badge on microbadger.com")

These are docker images for [PHP](https://secure.php.net) running on a [Alpine container](https://registry.hub.docker.com/u/webhippie/alpine/).


## Versions

* [latest](./latest) available as `webhippie/php-cli:latest`


## Volumes

* /srv/www
* /etc/php7/custom.d


## Ports

* 9000


## Available environment variables

```bash
PHP_COMPOSER_INSTALL = true
PHP_COMPOSER_ROOT = ${PHP_WEBROOT}
PHP_DATE_TIMEZONE = UTC
PHP_DISPLAY_ERRORS = On
PHP_DISPLAY_STARTUP_ERRORS = On
PHP_ERROR_LOG = /proc/self/fd/2
PHP_ERROR_REPORTING = E_ALL & ~E_DEPRECATED & ~E_STRICT
PHP_HTML_ERRORS = On
PHP_IGNORE_REPEATED_ERRORS = Off
PHP_IGNORE_REPEATED_SOURCE = Off
PHP_LOG_ERRORS = On
PHP_LOG_ERRORS_MAX_LEN = 1024
PHP_LOG_LEVEL = warning
PHP_MAX_CHILDREN = 75
PHP_MAX_EXECUTION_TIME = 3600
PHP_MAX_INPUT_TIME = 3600
PHP_MAX_REQUESTS = 500
PHP_MEMORY_LIMIT = 512M
PHP_POST_MAX_SIZE = 2G
PHP_PROCESS_IDLE_TIMEOUT = 10s
PHP_REPORT_MEMLEAKS = On
PHP_TRACK_ERRORS = Off
PHP_UPLOAD_MAX_FILESIZE = 2G
PHP_WEBROOT = /srv/www
```


## Inherited environment variables

* [webhippie/alpine](https://github.com/dockhippie/alpine#available-environment-variables)


## Contributing

Fork -> Patch -> Push -> Pull Request


## Authors

* [Thomas Boerger](https://github.com/tboerger)


## License

MIT


## Copyright

```
Copyright (c) 2015 Thomas Boerger <http://www.webhippie.de>
```
