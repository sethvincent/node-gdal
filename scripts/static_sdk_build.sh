#!/bin/bash

if [[ "$(uname -s)" == 'Linux' ]]; then
    sudo apt-get -qq update
    SDK_NAME="mapnik-linux-sdk-v3.0.0-rc1-43-g3cbde2d"
    curl -f -O -L https://mapnik.s3.amazonaws.com/dist/dev/${SDK_NAME}.tar.bz2
    tar xf ${SDK_NAME}.tar.bz2
    export PATH=$(pwd)/${SDK_NAME}/bin:$PATH
elif [[ "$(uname -s)" == 'Darwin' ]]; then
    SDK_NAME="mapnik-macosx-sdk-v3.0.0-rc1-43-g3cbde2d-lto"
    curl -f -O -L https://mapnik.s3.amazonaws.com/dist/dev/${SDK_NAME}.tar.bz2
    tar xf ${SDK_NAME}.tar.bz2
    export PATH=$(pwd)/${SDK_NAME}/bin:$PATH
fi

npm install --build-from-source --shared_gdal