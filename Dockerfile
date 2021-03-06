FROM alpine:3.6

LABEL Maintainer="Thiago Cangussu <thiago.cangussu@gmail.com>" \
      Description="Alpine Linux with Tini preinstalled and configured as entrypoint" \
      Version="0.16.1" \
      Revision="1"

ENV TINI_VERSION v0.16.1

ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini-muslc-amd64 /usr/local/bin/tini

RUN chmod +x /usr/local/bin/tini

ENTRYPOINT ["tini", "--"]
