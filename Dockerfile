FROM frigg/frigg-test-base:latest

RUN apt-get update && apt-get install -y \
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
        freetype* \
        aglfn autoconf autotools-dev binfmt-support fontconfig fonts-liberation \
        fonts-lmodern fonts-texgyre gcj-4.8-jre-lib gnuplot-nox groff groff-base
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
        psutils shared-mime-info tcl tcl8.6 tex-common tex-gyre texlive-base \
        texlive-binaries texlive-extra-utils texlive-font-utils \
        texlive-fonts-recommended texlive-fonts-recommended-doc \
        texlive-generic-recommended texlive-latex-base texlive-latex-base-doc \
        texlive-latex-recommended texlive-latex-recommended-doc texlive-luatex \ 
        texlive-pstricks texlive-pstricks-doc tipa tk tk8.6 x11-utils \
        x11-xserver-utils xbitmaps xdg-utils xterm

