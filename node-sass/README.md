# Precompiled sass binary for Node on Alpine Linux

Installing the node-sass module on Alpine Linux
[requires full recompilation of the sass library](https://github.com/sass/node-sass/search?q=alpine&type=Issues)
(requiring make, g++ and other build tools). This simple dockerfile uses
[alpine-node](https://github.com/mhart/alpine-node) to pre-compile the bindings that can then be used when installing
this library.

## Using the pre-compiled binaries

To use these pre-built binaries, use the SASS_BINARY parameters during node-sass installation:
https://github.com/sass/node-sass/#binary-configuration-parameters

## Rebuilding

Build the docker image and run against master, in most scenarios you would probably target a specific node-sass release,
do this by providing the release tag to the build:

```
docker build --tag "alpine-node-prebuilt/node-sass" .
docker run --interactive --rm --tty --volume ${PWD}:/build alpine-node-prebuilt/node-sass build
docker run --interactive --rm --tty --volume ${PWD}:/build alpine-node-prebuilt/node-sass build v3.13.0
```

This will leave the compiled artifact in the mounted volume ($PWD in the example above).
