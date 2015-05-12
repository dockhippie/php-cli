# PHP-FPM & Nginx Docker Image

Lightwight Docker image for the (latest) PHP-FPM and Nginx based on [AlpineLinux](http://alpinelinux.org)

* Image size only ~64MB
* Logging to stdout/stderr
* Very new packages (alpine:edge) 2015-05-12:
  * [PHP](http://pkgs.alpinelinux.org/package/main/x86/php) 5.6.7
  * [Nginx](http://pkgs.alpinelinux.org/package/main/x86/nginx) 1.6.2


### Usage
```bash
sudo docker run -v `pwd`/html:/webroot/public -p 80:80 webhippie/php-nginx
```

#### Config Presets
This image includes some config presets for various Webapps:

* `contao`: Preset to run a [ContaoCMS](http://contao.org) Site
* `owncloud`: Preset to run a [Owncloud](http://owncloud.org) Site

Use a preset by passing `--env CONFIG_PRESET=<name>` to docker run

### Volume structure

* `/webroot/public`: Webroot
* `/etc/nginx/conf.d`: Inject your nginx config here


## Versions

* [latest](https://github.com/dockhippie/php-nginx/tree/master)
  available as ```webhippie/php-nginx:latest``` at
    [Docker Hub](https://registry.hub.docker.com/u/webhippie/php-nginx/)

## Authors

* [Christoph Wiechert](https://github.com/psi-4ward)


## License

MIT


## Copyright

```
Copyright (c) 2015 Christoph Wiechert <http://www.webhippie.de>
```
