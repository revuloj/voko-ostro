FROM perl:slim
MAINTAINER <diestel@steloj.de>

# https://packages.debian.org/stretch/perl/

RUN apt-get update && apt-get install -y --no-install-recommends \
    tar curl \
	&& rm -rf /var/lib/apt/lists/*

COPY bin ./

