#!/usr/bin/env bash

if [[ ! "$(id -g php)" =~ "${PGID}" ]]; then
    echo "> enforcing group id"
    groupmod -o -g ${PGID} php
fi

if [[ ! "$(id -u php)" =~ "${PGID}" ]]; then
    echo "> enforcing user id"
    usermod -o -u ${PUID} php
fi

true
