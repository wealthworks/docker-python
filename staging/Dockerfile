FROM lcgc/python:2.7.11-base
MAINTAINER Eagle Liut <liutao@licaigc.com>

RUN apk --update add \
  build-base \
  ca-certificates \
  zlib-dev \
  python-dev \
  readline-dev \
  ncurses \
  py-crypto \
  py-httplib2 \
  py-mysqldb \
  py-six \
  libmemcached-dev \
  libsasl \
  nodejs \
  && pip install -U pip setuptools \
  && rm -rf /tmp/pip_build_root \
  && rm -rf /usr/lib/python2.7/test \
  && find /usr/lib/python2.7 -type f -name "*.py?" -delete \
  && rm -rf /var/cache/apk/*

CMD ["bash"]
