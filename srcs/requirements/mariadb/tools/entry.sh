#!/bin/sh

mkdir -p /run/mysqld

cat << EOF > /init.sql
CREATE DATABASE IF NOT EXISTS $DB_NAME;
CREATE USER IF NOT EXISTS "$DB_USER"@"%" IDENTIFIED BY "$DB_PASS";
GRANT ALL ON $DB_NAME.* TO "$DB_USER"@"%";
FLUSH PRIVILEGES;
EOF

exec mysqld --init-file /init.sql
