FROM python:2.7.12-slim
MAINTAINER Liut <liutao@licaigc.com>

ENV DEBIAN_FRONTEND noninteractive

ADD sources.list.jessie.txt /etc/apt/sources.list

RUN apt-get update \
 && apt-get install -y --no-install-recommends apt-transport-https curl

RUN curl -s https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add - \
 && echo '\
deb https://deb.nodesource.com/node_5.x jessie main\n\
deb-src https://deb.nodesource.com/node_5.x jessie main\n\
' > /etc/apt/sources.list.d/nodesource.list \
 && echo '\
Package: nodejs\n\
Pin: origin deb.nodesource.com\n\
Pin-Priority: 900\n\
' > /etc/apt/preferences.d/nodesource

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
    nodejs \
    git \
    graphicsmagick \
    gfortran \
    netcat \
    cron \
    redis-tools \
    mariadb-client \
    postgresql-client \
    libffi-dev \
    libopenblas-dev \
    liblapack-dev \
    libblas-dev \
    libatlas-dev \
    libfreetype6-dev \
    libmemcached-dev \
    libmysqlclient-dev \
    libpq-dev \
    libjpeg-dev \
    libzlcore-dev \
    librsvg2-dev \
    libtiff5-dev \
    liblcms2-dev \
    libwebp-dev \
    libxml2-dev \
    libxslt-dev \
    libcap-dev \
    libsasl2-dev \
    libldap2-dev \
    libssl-dev \
    build-essential

RUN curl -s http://cdn.licaigongchang.com/files/phantomjs-2.1.1-linux-x86_64.tar.bz2 | tar xvj -C /opt/ \
 && mv /opt/phantomjs-2.1.1-linux-x86_64/ /opt/phantomjs/
ENV PATH "/opt/phantomjs/bin:$PATH"

RUN pip install --no-cache-dir virtualenv cryptography
