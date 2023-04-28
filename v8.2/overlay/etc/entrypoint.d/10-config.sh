#!/usr/bin/env bash

if [[ "${PHP_SKIP_TEMPLATES}" != "true" ]]; then
    gomplate \
        -o /etc/php82/php.ini \
        -f /etc/templates/php.ini.tmpl || exit 1

    if [[ $? -ne 0 ]]; then
        echo "failed to write php config"
        exit 1
    fi
fi

for TEMPLATE in $(find /etc/php82/custom.d -mindepth 1 -type d); do
    RELATIVENAME=${TEMPLATE//\/etc\/php8\/custom.d\//}

    if [ ! -d "/etc/php82/conf.d/${RELATIVENAME}" ]; then
        mkdir "/etc/php82/conf.d/${RELATIVENAME}"
    fi
done

for TEMAPLTE in $(find /etc/php82/custom.d -mindepth 1 -type f); do
    RELATIVENAME=${TEMPLATE//\/etc\/php8\/custom.d\//}

    ln -sf \
        "/etc/php82/conf.d/${RELATIVENAME}" \
        "/etc/php82/custom.d/${RELATIVENAME}"
done

true
