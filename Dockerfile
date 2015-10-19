FROM frigg/frigg-test-base


# add invenio user
RUN useradd --home-dir /home/invenio --create-home --shell /bin/bash --uid 1000 invenio


# nodejs, detects distribution and adds the right repo
RUN apt-get update && \
    apt-get -qy install --fix-missing --no-install-recommends \
        curl \
        && \
    curl -sL https://deb.nodesource.com/setup_4.x | bash -

#  - package cache updates
#  - install requirements from repos
#  - clean up
#  - install python requirements
#  - install nodejs requirements
RUN apt-get update && \
    apt-get -qy upgrade --fix-missing --no-install-recommends && \
    apt-get -qy install --fix-missing --no-install-recommends \
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
        sudo \
        && \
    apt-get clean autoclean && \
    apt-get autoremove -y && \
    rm -rf /var/lib/{apt,dpkg}/ && \
    (find /usr/share/doc -depth -type f ! -name copyright -delete || true) && \
    (find /usr/share/doc -empty -delete || true) && \
    rm -rf /usr/share/man/* /usr/share/groff/* /usr/share/info/* && \
    pip install --upgrade pip && \
    pip install ipdb \
        ipython \
        mock \
        unittest2 \
        watchdog \
        && \
    npm update && \
    npm install --silent -g bower less clean-css uglify-js requirejs


