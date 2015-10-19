FROM frigg/frigg-test-base:latest

RUN apt-get update && \
        cython \
        gcc \
        git \
        nodejs \
        libffi-dev \
        libfreetype6-dev \
        libjpeg-dev \
        liblzma-dev \
        libmysqlclient-dev \
        libssl-dev \
        libxslt-dev \
        mysql-client \
        poppler-utils \
        sudo

