FROM python:2.7.10
MAINTAINER Jiangge Zhang <zhangjiangge@licaigc.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -y apt-transport-https

RUN curl -s https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add -
RUN echo '\
deb https://deb.nodesource.com/node_4.x jessie main\n\
deb-src https://deb.nodesource.com/node_4.x jessie main\n\
' > /etc/apt/sources.list.d/nodesource.list
RUN echo '\
Package: nodejs\n\
Pin: origin deb.nodesource.com\n\
Pin-Priority: 900\n\
' > /etc/apt/preferences.d/nodesource

RUN apt-get update
RUN apt-get install -y \
    nodejs \
    imagemagick \
    gfortran \
    redis-tools \
    mariadb-client \
    libopenblas-dev \
    liblapack-dev \
    libblas-dev \
    libatlas-dev \
    librsvg2-dev \
    libmemcached-dev \
    libjpeg-dev \
    libzlcore-dev \
    libtiff5-dev \
    libfreetype6-dev \
    liblcms2-dev \
    libwebp-dev \
    libxml2-dev \
    libxslt-dev \
    build-essential

RUN wget -qO- https://www.guihua.com/a/89a9 | tar xvj -C /opt/
RUN mv /opt/phantomjs-1.9.8-linux-x86_64/ /opt/phantomjs/
