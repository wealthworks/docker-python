FROM lcgc/python:2.7.11-base
MAINTAINER Eagle Liut <liutao@licaigc.com>

RUN echo "http://dl-4.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories

RUN apk --update add \
  autoconf \
  bash \
  build-base \
  ca-certificates \
  gfortran \
  freetype-dev \
  imagemagick \
  lcms2-dev \
  libc6-compat \
  libcap-dev \
  libjpeg-turbo-dev \
  libjpeg-turbo-utils \
  libldap \
  libmemcached-dev \
  libpng \
  librsvg-dev \
  libsasl \
  libwebp-dev \
  libxml2-dev \
  libxslt-dev \
  mariadb-client \
  ncurses \
  netcat-openbsd \
  nodejs \
  python \
  python-dev \
  py-cffi \
  py-crypto \
  py-mysqldb \
  py-six \
  py-virtualenv \
  py-libxml2 \
  py-libxslt \
  readline-dev \
  redis \
  snappy \
  tiff-dev \
  zlib-dev \
  && pip install -U pip setuptools \
  && rm -rf /tmp/pip_build_root \
  && rm -rf /usr/lib/python2.7/test \
  && find /usr/lib/python2.7 -type f -name "*.py?" -delete \
  && rm -rf /var/cache/apk/*

RUN apk --update add \
  tzdata \
  && cp /usr/share/zoneinfo/Hongkong /etc/localtime \
  && echo "Hongkong" >  /etc/timezone \
  && apk del tzdata \
  && rm -rf /var/cache/apk/*


RUN mkdir -p /opt \
  && wget -qO- http://cdn.tuluu.com/files/phantomjs-2.1.1-linux-x86_64.tar.bz2 | tar xvj -C /opt/ \
  && mv /opt/phantomjs-2.1.1-linux-x86_64/ /opt/phantomjs/
ENV PATH "/opt/phantomjs/bin:$PATH"


RUN apk --update add \
  openblas-dev \
  py-numpy-dev \
  py-scipy-dev \
  && rm -rf /tmp/pip_build_root \
  && rm -rf /usr/lib/python2.7/test \
  && find /usr/lib/python2.7 -type f -name "*.py?" -delete \
  && rm -rf /var/cache/apk/*

