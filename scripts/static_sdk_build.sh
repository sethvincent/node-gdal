#!/bin/bash

if [[ "$(uname -s)" == 'Linux' ]]; then
    sudo apt-get -qq update
    curl -f -o https://mapnik.s3.amazonaws.com/dist/dev/mapnik-linux-sdk-v3.0.0-rc1-40-g8cad5be.tar.bz2
    tar xf mapnik-linux-sdk-v2.2.0-622-gea61c57.tar.bz2
    export PATH=$(pwd)/mapnik-linux-sdk-v2.2.0-622-gea61c57/bin:$PATH
elif [[ "$(uname -s)" == 'Darwin' ]]; then
    curl -f -o https://mapnik.s3.amazonaws.com/dist/dev/mapnik-macosx-sdk-v2.2.0-622-gea61c57.tar.bz2
    tar xf mapnik-macosx-sdk-v2.2.0-622-gea61c57_.tar.bz2
    export PATH=$(pwd)/mapnik-macosx-sdk-v2.2.0-622-gea61c57/bin:$PATH
fi

npm install --build-from-source --shared_gdal