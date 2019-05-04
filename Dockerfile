FROM perl:slim
MAINTAINER <diestel@steloj.de>

# https://packages.debian.org/stretch/perl/

RUN apt-get update && apt-get install -y --no-install-recommends \
    openssh-server tar curl \
	&& rm -rf /var/lib/apt/lists/*

COPY bin /usr/local
COPY etc ./

RUN useradd -ms /bin/bash -u 1074 vaneso
WORKDIR /home/vaneso

USER vaneso:users

