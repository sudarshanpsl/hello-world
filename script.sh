#!/bin/bash
if [[ $(uname -m) == "ppc64le" ]]; then
  ./build
else
  docker build -t test -f Dockerfile.`uname -m` .
  docker run -i --rm test
fi
