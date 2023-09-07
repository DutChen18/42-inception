FROM debian:11

RUN apt update && apt install -y gcc make libiberty-dev python3-distutils python3-dev

ADD https://github.com/distcc/distcc/releases/download/v3.4/distcc-3.4.tar.gz distcc-3.4.tar.gz

RUN tar xf distcc-3.4.tar.gz

WORKDIR distcc-3.4

RUN ./configure && make && make install

ENTRYPOINT ["distccd", "--daemon", "--allow", "0.0.0.0/0", "--enable-tcp-insecure", "--no-detach"]
