FROM ubuntu:18.04

LABEL maintainer="junion-org"

RUN set -x \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        tzdata \
    && apt-get install -y --no-install-recommends \
        locales \
        ca-certificates \
        openssh-client \
        curl \
        wget \
        jq \
        git \
        python3.8-dev \
        python3.8-distutils \
    && ln -s /usr/bin/python3.8 /usr/local/bin/python \
    && curl -kL https://bootstrap.pypa.io/get-pip.py -o get-pip.py \
    && python get-pip.py \
    && rm get-pip.py \
    && pip install -U pip \
    && pip install pylint \
    && locale-gen ja_JP.UTF-8 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ENV LANG="ja_JP.UTF-8" \
    LANGUAGE="ja_JP:ja" \
    LC_ALL="ja_JP.UTF-8" \
    TZ="Asia/Tokyo"
