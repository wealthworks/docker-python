FROM alpine:edge
MAINTAINER Eagle Liut <liutao@licaigc.com>

# py-virtualenv required: py-pip, python
RUN apk --update add \
  bash \
  py-virtualenv \
  && pip install -U pip setuptools \
  && rm -rf /tmp/pip_build_root \
  && rm -rf /usr/lib/python2.7/test \
  && find /usr/lib/python2.7 -type f -name "*.py?" -delete \
  && rm -rf /var/cache/apk/*

RUN mkdir /app
WORKDIR /app

CMD ["bash"]
