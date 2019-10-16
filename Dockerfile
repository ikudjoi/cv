FROM debian:buster-slim

RUN apt-get update \
    && apt-get install -y texlive-full \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && luaotfload-tool --update

WORKDIR /doc
