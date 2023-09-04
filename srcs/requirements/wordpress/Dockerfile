FROM debian:11

RUN apt update && apt install -y php-fpm php-mysql curl mariadb-client

COPY tools conf /

ADD --chmod=755 https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar /usr/local/bin/wp

WORKDIR /var/www/html

ENTRYPOINT ["/entry.sh"]
