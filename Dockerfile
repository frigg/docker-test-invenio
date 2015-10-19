FROM frigg/frigg-test-base:latest

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get -y build-dep python-matplotlib

RUN useradd --home-dir /home/invenio --create-home --shell /bin/bash --uid 1000 invenio

# nodejs, detects distribution and adds the right repo
RUN apt-get update && \
    apt-get -qy install --fix-missing --no-install-recommends \
        curl \
        && \
    curl -sL https://deb.nodesource.com/setup_4.x | bash -

RUN apt-get update && \
    apt-get -qy upgrade --fix-missing --no-install-recommends && \
    apt-get -qy install --fix-missing --no-install-recommends && \
    apt-get install -y freetype* \
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
        linux-libc-dev \
        aglfn autoconf autotools-dev binfmt-support fontconfig fonts-liberation \
        fonts-lmodern fonts-texgyre gcj-4.8-jre-lib gnuplot-nox groff groff-base \
        hicolor-icon-theme imagemagick imagemagick-common latex-beamer latex-xcolor \
        libasound2 libasound2-data libasprintf-dev libcroco3 libdatrie1 \
        libdjvulibre-text libdjvulibre21 libdrm-intel1 libdrm-nouveau2 \
        libdrm-radeon1 libelf1 libffcall1 libfftw3-double3 libfile-basedir-perl \
        libfile-desktopentry-perl libfile-mimeinfo-perl libgcj-common libgcj14 \
        libgd3 libgdk-pixbuf2.0-0 libgdk-pixbuf2.0-common libgettextpo-dev \
        libgettextpo0 libgif4 libgl1-mesa-dri libgl1-mesa-glx libglapi-mesa \
        libgraphite2-3 libharfbuzz0b libicu52 libilmbase6 libkpathsea6 libllvm3.4 \
        liblqr-1-0 liblua5.1-0 libmagickcore5 libmagickcore5-extra libmagickwand5 \
        libnetpbm10 libopenexr6 libpango-1.0-0 libpangocairo-1.0-0 libpangoft2-1.0-0 \
        libpciaccess0 libperl4-corelibs-perl libpipeline1 libptexenc1 libreadline5 \
        librsvg2-2 librsvg2-common libtcl8.6 libthai-data libthai0 libtk8.6 \
        libtxc-dxtn-s2tc0 libunistring0 libutempter0 libvpx1 libx11-xcb1 libxaw7 \
        libxcb-dri2-0 libxcb-dri3-0 libxcb-glx0 libxcb-present0 libxcb-shape0 \
        libxcb-sync1 libxcomposite1 libxcursor1 libxdamage1 libxfixes3 libxft2 \
        libxi6 libxinerama1 libxmu6 libxmuu1 libxpm4 libxrandr2 libxshmfence1 \
        libxss1 libxv1 libxxf86dga1 libxxf86vm1 lmodern luatex m4 pgf prosper ps2eps \
        psutils shared-mime-info tcl tcl8.6 tex-gyre texlive-base \
        texlive-binaries texlive-extra-utils texlive-font-utils \
        texlive-fonts-recommended texlive-fonts-recommended-doc \
        texlive-generic-recommended texlive-latex-base texlive-latex-base-doc \
        texlive-latex-recommended texlive-latex-recommended-doc texlive-luatex \
        texlive-pstricks texlive-pstricks-doc tipa tk tk8.6 x11-utils \
        x11-xserver-utils xbitmaps xdg-utils xterm \
        dbus dbus-x11 dictionaries-common tex-common fonts-dejavu fonts-dejavu-extra \
        fonts-opensymbol fonts-sil-gentium fonts-sil-gentium-basic gconf-service \
        gconf-service-backend gconf2 gconf2-common hunspell-en-us libapparmor1 \
        libatk1.0-0 libatk1.0-data libboost-date-time1.54.0 libcdr-0.0-0 \
        libclucene-contribs1 libclucene-core1 libcmis-0.4-4 libcolamd2.8.0 \
        libexttextcat-2.0-0 libexttextcat-data libgconf-2-4 libglu1-mesa \
        libgstreamer-plugins-base1.0-0 libgstreamer1.0-0 libgtk2.0-0 libgtk2.0-bin \
        libgtk2.0-common libharfbuzz-icu0 libhsqldb1.8.0-java libhunspell-1.3-0 \
        libhyphen0 liblangtag-common liblangtag1 libmhash2 libmspub-0.0-0 \
        libmythes-1.2-0 libneon27-gnutls libnspr4 libnss3 libnss3-nssdb liborc-0.4-0  \
        liborcus-0.6-0 libpam-systemd libraptor2-0 librasqal3 librdf0 libreoffice \
        libreoffice-avmedia-backend-gstreamer libreoffice-base libreoffice-base-core \
        libreoffice-base-drivers libreoffice-calc libreoffice-common  \
        libreoffice-core libreoffice-draw libreoffice-gnome libreoffice-gtk  \
        libreoffice-impress libreoffice-java-common libreoffice-math  \
        libreoffice-pdfimport libreoffice-report-builder-bin \
        libreoffice-sdbc-firebird libreoffice-sdbc-hsqldb libreoffice-style-galaxy  \
        libreoffice-style-human libreoffice-writer libsystemd-login0 libvisio-0.0-0 \
        libwpd-0.9-9 libwpg-0.2-2 libwps-0.2-2 libyajl2 lp-solve python3-uno \
        systemd-services systemd-shim uno-libs3 ure xfonts-mathml \
        apache2-mpm-worker clisp giflib-tools gnuplot html2text pdftk postfix \
        pstotext python-libxml2 python-libxslt1 sbcl texlive \
        libreoffice-script-provider-python \
        hdf5-helpers libhdf5-7 libhdf5-dev


RUN apt-get update && \
    apt-get clean autoclean && \
    apt-get autoremove -y && \
    pip install --upgrade pip && \
    pip install ipdb \
        ipython \
        mock \
        unittest2 \
        watchdog \
        && \
    npm update && \
    npm install --silent -g bower less clean-css uglify-js requirejs
