FROM debian:11

RUN apt update && apt install -y nginx openssl

RUN openssl req -x509 -newkey rsa:4096 -keyout /cert.key -out /cert.pem -nodes -subj "/C=NL"

COPY conf /

ENTRYPOINT ["nginx", "-g", "daemon off;"]
