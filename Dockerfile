FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive
ARG BRANCH_OR_TAG=linux-msft-wsl-5.10.y

RUN : \
    && apt-get update \
    && apt-get install --no-install-recommends -y -q \
       git \
       build-essential \
       flex \
       bison \
       libssl-dev \
       libelf-dev \
       bc \
       python3 \
       dwarves \
       ca-certificates \
       libncurses-dev \
    && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir src \
    && update-ca-certificates --fresh \
    && git clone -b $BRANCH_OR_TAG --depth=1 https://github.com/microsoft/WSL2-Linux-Kernel.git src \
    && :

WORKDIR /src
CMD ["/bin/bash"]
   