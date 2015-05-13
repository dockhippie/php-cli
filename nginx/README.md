# PHP Nginx

These are docker images for PHP Nginx running on an
[Alpine Linux container](https://registry.hub.docker.com/u/webhippie/alpine/).


## Usage

```
docker run -ti -v $(pwd)/public:/app/public -p 80:80 --name php-nginx webhippie/php-nginx:latest
```


## Config Presets

This image includes some configuration presets for various applications:

* `contao`: Preset to run a [ContaoCMS](http://contao.org) application
* `owncloud`: Preset to run a [Owncloud](http://owncloud.org) application

Use a preset by passing `-e CONFIG_PRESET=<name>` to docker run


## Versions

* [latest](https://github.com/dockhippie/php/nginx/tree/master)
  available as ```webhippie/php-nginx:latest``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/php-nginx/)


## Contributing

Fork -> Patch -> Push -> Pull Request


## Authors

* [Christoph Wiechert](https://github.com/psi-4ward)
* [Thomas Boerger](https://github.com/tboerger)


## License

MIT


## Copyright

```
Copyright (c) 2015 Christoph Wiechert <http://www.webhippie.de>
```
