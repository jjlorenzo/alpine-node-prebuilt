#!/bin/sh

set -ex && docker run            \
  --interactive                  \
  --rm                           \
  --tty                          \
  --volume ${PWD}:/build         \
  alpine-node-prebuilt/node-sass \
  "$@"
