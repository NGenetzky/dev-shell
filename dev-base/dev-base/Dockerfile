FROM ubuntu:16.04
LABEL \
    maintainer="Nathan@Genetzky.us"

RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    ca-certificates \
    ctags \
    curl \
    git \
    make \
    man \
    man \
    tmux \
    vim \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y \
    locales \
    && locale-gen --purge en_US.UTF-8 \
    && update-locale LANG=en_US.UTF-8

# No passwd when using 'sudo'
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

# Define 'dev' USER
RUN useradd dev -d /home/dev -m \
    && adduser dev sudo
USER dev
WORKDIR /home/dev/


