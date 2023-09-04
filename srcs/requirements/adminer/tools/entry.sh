#!/bin/sh

mkdir -p /run/php

exec php-fpm7.4 --nodaemonize --allow-to-run-as-root
