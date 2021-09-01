#!/usr/bin/env bash

pushd ${PHP_COMPOSER_ROOT} >/dev/null
    if [ -f composer.json ]; then
        if [ -n "${GITHUB_TOKEN}" ]; then
            echo "> set github token"
            su-exec php composer \
                config \
                -n \
                -g github-oauth.github.com \
                ${GITHUB_TOKEN}
        fi

        if [[ "${PHP_COMPOSER_INSTALL}" == "true" ]]; then
            echo "> install composer deps"

            n=0
            until [ $n -ge 5 ]; do
                su-exec php composer \
                    install \
                    --no-dev \
                    --no-scripts \
                    -n \
                    -q \
                    --working-dir ${PHP_COMPOSER_ROOT} && break

                n=$(($n+1))
                sleep 3
            done
        fi
    fi
popd >/dev/null

true
