#!/usr/bin/env bash

if [[ "${PHP_SKIP_CHOWN}" != "true" ]]; then
    echo "> chown webroot files"
    find ${PHP_WEBROOT} \( \! -user php -o \! -group php \) -print0 | xargs -0 -r chown php:php
fi

true
