# PHP Nginx

[![](https://badge.imagelayers.io/webhippie/php-nginx:latest.svg)](https://imagelayers.io/?images=webhippie/php-nginx:latest 'Get your own badge on imagelayers.io')

These are docker images for [PHP Nginx](https://secure.php.net) running on an
[Alpine Linux container](https://registry.hub.docker.com/u/webhippie/alpine/).


## Usage

```bash
docker run -ti \
  --name php-nginx \
  webhippie/php-nginx:latest
```


# Customization

This image includes some configuration presets for various applications:

* `contao`: Preset to run [ContaoCMS](http://contao.org)
* `owncloud`: Preset to run [Owncloud](http://owncloud.org)

Use a preset by passing `-e CONFIG_PRESET=<name>` to docker run.

In addition to that we provide different volumes to overwrite the behavior of
Nginx or PHP. In order to customize the behavior of Nginx you can inject
configurations into the volume ```/etc/nginx/custom.d```, this directory gets
loaded by the server configuration directly. To customize the behavior of the
PHP interpreter you can inject configuration files into the volume
```/etc/php/custom.d```, this directory gets syncronized with
```/etc/php/conf.d``` when the service starts through the docker ```CMD```.


## Versions

* [latest](https://github.com/dockhippie/php/nginx/tree/master)
  available as ```webhippie/php-nginx:latest``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/php-nginx/)


## Available environment variables

```bash
ENV PHP_MEMORY_LIMIT 512M
ENV PHP_POST_MAX_SIZE 2G
ENV PHP_UPLOAD_MAX_FILESIZE 2G
ENV PHP_MAX_EXECUTION_TIME 3600
ENV PHP_MAX_INPUT_TIME 3600
ENV PHP_DATE_TIMEZONE UTC
```


## Inherited environment variables

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
Copyright (c) 2015 Thomas Boerger <http://www.webhippie.de>
```
