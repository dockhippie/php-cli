#!/usr/bin/env bash

if [[ "${PHP_SKIP_TEMPLATES}" != "true" ]]; then
    echo "> writing fpm config"
    gomplate -V \
        -o /etc/php83/php-fpm.conf \
        -f /etc/templates/php-fpm.conf.tmpl

    if [[ $? -ne 0 ]]; then
        echo "failed to write fpm config"
        exit 1
    fi

    echo "> writing php config"
    gomplate \
        -o /etc/php83/php.ini \
        -f /etc/templates/php.ini.tmpl || exit 1

    if [[ $? -ne 0 ]]; then
        echo "failed to write php config"
        exit 1
    fi
fi

for TEMPLATE in $(find /etc/php83/custom.d -mindepth 1 -type d); do
    RELATIVENAME=${TEMPLATE//\/etc\/php8\/custom.d\//}

    if [ ! -d "/etc/php83/conf.d/${RELATIVENAME}" ]; then
        mkdir "/etc/php83/conf.d/${RELATIVENAME}"
    fi
done

for TEMAPLTE in $(find /etc/php83/custom.d -mindepth 1 -type f); do
    RELATIVENAME=${TEMPLATE//\/etc\/php8\/custom.d\//}

    ln -sf \
        "/etc/php83/conf.d/${RELATIVENAME}" \
        "/etc/php83/custom.d/${RELATIVENAME}"
done

true
