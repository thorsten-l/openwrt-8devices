FROM ubuntu:18.04

RUN apt update -y && apt upgrade -y \
    && apt install -y build-essential wget git subversion unzip make \
    python2.7 curl flex grep diffutils gawk libz-dev binutils \
    openssl libssl1.0-dev libncurses5-dev man file git-doc m4 ocaml-nox \
    zlib1g-dev 

RUN mkdir /work && chown 1000:1000 /work && groupadd -g 1000 work \
    && useradd -u 1000 -g 1000 -s /bin/bash -d /work work
WORKDIR /work
USER 1000:1000

CMD [ "/bin/bash" ]
