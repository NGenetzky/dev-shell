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

# Locale set to en_US.UTF-8
RUN apt-get update && apt-get install -y \
    locales \
    && apt-get clean && rm -rf /var/lib/apt/lists/* \
    && locale-gen --purge en_US.UTF-8 \
    && update-locale LANG=en_US.UTF-8

RUN apt-get update && apt-get install -y \
    python \
    && apt-get clean && rm -rf /var/lib/apt/lists/* \

# Add "repo" tool (used by many Yocto-based projects)
RUN curl http://storage.googleapis.com/git-repo-downloads/repo > /usr/local/bin/repo &&\
    chmod a+x /usr/local/bin/repo
