#!/bin/sh

set -ex && docker build \
  --tag "alpine-node-prebuilt/node-sass" \
  .
