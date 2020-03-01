#!/usr/bin/env bash 

## install prerequisits for snarky 
sudo apt-get -q update && \
sudo apt-get --no-install-recommends -q -y install \
    build-essential=12.3 \
    cmake=3.7.2-1 \
    git=1:2.11.0-3+deb9u4 \
    libboost-dev=1.62.0.1 \
    libboost-program-options-dev=1.62.0.1 \
    libffi-dev=3.2.1-6 \
    libgmp-dev=2:6.1.2+dfsg-1 \
    libgmp3-dev=2:6.1.2+dfsg-1 \
    libprocps-dev=2:3.3.12-3+deb9u1 \
    libssl-dev \
    m4=1.4.18-1 \
    nano=2.7.4-1 \
    pkg-config=0.29-4+b1 \
    python-markdown=2.6.8-1 && \
sudo apt-get clean && \
sudo rm -rf /var/lib/apt/lists/*

## 
opam update -y && opam upgrade -y
eval $(opam env)

## install snarky
opam install -y jbuilder menhir
opam pin add -y git@github.com:kunxian-xia/snarky.git