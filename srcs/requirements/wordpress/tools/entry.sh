#!/bin/sh

mkdir -p /run/php

wp core download --allow-root

if ! wp core is-installed --allow-root
then
	wp config create --allow-root --dbhost=mariadb --dbname="$DB_NAME" --dbuser="$DB_USER" --dbpass="$DB_PASS"

	wp core install --allow-root --url="$WP_URL" --title="$WP_TITLE" --admin_user="$WP_ADMIN_USER" --admin_password="$WP_ADMIN_PASS" --admin_email="$WP_ADMIN_EMAIL"

	wp user create --allow-root "$WP_USER" "$WP_EMAIL" --user_pass="$WP_PASS"

	wp config set --allow-root WP_REDIS_HOST redis

	wp plugin install --allow-root redis-cache --activate

	wp redis enable --allow-root
fi

exec php-fpm7.4 --nodaemonize --allow-to-run-as-root
