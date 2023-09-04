FROM debian:11

RUN apt update && apt install -y nginx

COPY conf /

ENTRYPOINT ["nginx", "-g", "daemon off;"]
