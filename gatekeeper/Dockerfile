FROM node:7-alpine
MAINTAINER Eemil Väisänen <eemil.vaisanen@iki.fi>

# SETUP

RUN apk add --no-cache --virtual .build-deps \
        binutils-gold \
        curl \
        g++ \
        gcc \
        gnupg \
        libgcc \
        linux-headers \
        make \
        git \
        python \
        python-dev \
        tar \
    && git clone https://github.com/prose/gatekeeper /usr/src/app/ \
    && cd /usr/src/app \
    && npm install \
    && apk del .build-deps \
    && apk add --no-cache --upgrade tini

# CONFIGURE

WORKDIR /usr/src/app
ENV NODE_ENV env

COPY config.json /usr/src/app/

COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]

EXPOSE 3000
CMD ["node", "server.js"]
