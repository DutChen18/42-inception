FROM debian:11

RUN apt update && apt install -y php-fpm php-mysql mariadb-client

COPY tools conf /

ADD --chmod=755 https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php /var/www/html/index.php

WORKDIR /var/www/html

ENTRYPOINT ["/entry.sh"]
