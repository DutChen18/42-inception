FROM debian:11

RUN apt update && apt install -y redis

ENTRYPOINT ["redis-server", "--protected-mode", "no"]
