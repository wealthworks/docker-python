FROM lcgc/python:2.7.10-base
MAINTAINER Eagle Liut <liutao@licaigc.com>

RUN apk --update add \
  build-base \
  ca-certificates \
  libffi-dev \
  zlib-dev \
  python-dev \
  readline-dev \
  ncurses \
  py-crypto \
  postgresql-dev \
  mariadb-libs \
  py-six \
  libmemcached-dev \
  libsasl \
  nodejs \
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

CMD ["bash"]
