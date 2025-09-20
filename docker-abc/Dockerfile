FROM ubuntu:22.04 AS base

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y sudo \
    && rm -rf /var/lib/apt/lists/*

RUN useradd -ms /bin/bash abc \
    && echo "abc ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

RUN mkdir -p /opt/myfolder \
    && chown -R abc:abc /opt/myfolder

USER abc

WORKDIR /opt/myfolder

