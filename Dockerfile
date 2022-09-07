FROM docker.io/ubuntu:22.04

LABEL maintainer="Otavio Augusto Gomes <otaviogomes@protonmail.com>"

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    dia \
    fonts-inconsolata \
    fonts-liberation \
    ghostscript \
    git-core \
    inkscape \
    lmodern \
    make \
    python3-pygments \
    texlive-extra-utils \
    texlive-fonts-extra \
    texlive-fonts-recommended \
    texlive-font-utils \
    texlive-latex-base \
    texlive-latex-extra \
    texlive-plain-generic \
    texlive-science \
    texlive-xetex \
    xfonts-scalable \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir -p /materials

WORKDIR /materials

ENTRYPOINT ["/bin/bash"] 
