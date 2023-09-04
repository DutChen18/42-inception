#!/bin/sh

mkdir -p /var/run/vsftpd/empty

exec vsftpd
