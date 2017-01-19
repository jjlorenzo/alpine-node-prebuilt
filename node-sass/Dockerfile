# Based on build script found here
# https://github.com/sass/node-sass#rebuilding-binaries
FROM alpine:3.5

RUN set -ex && apk add --no-cache \
  build-base \
  curl       \
  git        \
  nodejs     \
  python   &&\
  npm update --silent --global npm

RUN set -ex &&\
  git clone --recursive https://github.com/sass/node-sass.git

COPY entry-point.sh entry-point.sh

ENTRYPOINT ["/entry-point.sh"]
