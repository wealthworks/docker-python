FROM lcgc/python:2.7.11-base
MAINTAINER Eagle Liut <liutao@licaigc.com>

RUN apk --update add \
  build-base \
  ca-certificates \
  ncurses \
  nodejs \
  libmemcached-dev \
  libsasl \
  py-crypto \
  py-flask \
  py-httplib2 \
  py-mysqldb \
  py-six \
  python-dev \
  readline-dev \
  snappy \
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

CMD ["bash"]
