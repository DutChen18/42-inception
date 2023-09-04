FROM debian:11

RUN apt update && apt install -y vsftpd

COPY tools conf /

ENTRYPOINT ["./entry.sh"]
