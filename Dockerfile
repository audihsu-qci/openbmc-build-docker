FROM ubuntu:jammy

ARG timezone

ENV DEBIAN_FRONTEND noninteractive
ENV TZ ${timezone:-Etc/UTC}
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN echo "Setting TZ=${TZ}"

RUN apt update && \
    apt install -y \
    gawk wget git \
    diffstat unzip texinfo gcc \
    build-essential chrpath socat \
    cpio python3 python3-pip python3-pexpect \
    xz-utils debianutils iputils-ping \
    python3-git python3-jinja2 libegl1-mesa \
    libsdl1.2-dev pylint xterm python3-subunit \
    mesa-common-dev zstd liblz4-tool

RUN apt install -y locales

RUN apt install -y sudo

RUN apt install -y screen

RUN apt install -y vim

RUN apt install -y file

RUN locale-gen en_US.UTF-8
RUN update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8

