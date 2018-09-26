#!/usr/bin/env bash

[[ ! -d build ]] && mkdir build/
cd build/

cmake \
    -DCMAKE_INSTALL_PREFIX:PATH="${PREFIX}" \
    -DCMAKE_PREFIX_PATH:STRING="${BUILD_PREFIX}" \
    -DBUILD_DOCS:BOOL=FALSE \
    -DBUILD_EXAMPLES:BOOL=FALSE \
    -DBUILD_TESTS:BOOL=FALSE \
    ..

make
make install
# TODO: needs tests fixed
# make test
