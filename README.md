# Using alpine:3.4

``` sh
export SASS_BINARY_NAME=linux-musl-x64-48
export SASS_BINARY_SITE='https://github.com/jjlorenzo/alpine-node-prebuilt/blob/master/node-sass'

docker cp \
  ${CID}:/root/node_modules/node-sass/vendor/linux-x64-48/binding.node\
  node-sass/${VERSION}/linux-musl-x64-48_binding.node
```
