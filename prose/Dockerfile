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
    && git clone https://github.com/prose/prose /usr/src/app/ \
    && cd /usr/src/app \
    && npm install -g gulp serve \
    && npm install \
    && apk del .build-deps \
    && apk add --no-cache --upgrade tini

# CONFIGURE

WORKDIR /usr/src/app
ENV NODE_ENV env

COPY oauth.json /usr/src/app/
RUN mkdir -p dist && gulp

COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]

EXPOSE 3000
CMD ["serve"]
