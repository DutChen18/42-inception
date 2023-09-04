FROM debian:11

RUN apt update && apt install -y mariadb-server

COPY tools conf /

ENTRYPOINT ["/entry.sh"]
