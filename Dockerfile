FROM docker.io/ubuntu:22.04

LABEL maintainer="Otavio Augusto Gomes <otaviogomes@protonmail.com>"

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    ghostscript \
    git-core \
    inkscape \
    texlive-latex-base \
    texlive-latex-extra \
    texlive-font-utils \
    dia \
    python3-pygments \
    texlive-fonts-recommended \
    texlive-fonts-extra \
    make \
    texlive-xetex \
    texlive-extra-utils \
    fonts-inconsolata \
    fonts-liberation \
    xfonts-scalable \
    lmodern \
    texlive-science \
    texlive-plain-generic \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir -p /materials

WORKDIR /materials

ENTRYPOINT ["/bin/bash"] 
