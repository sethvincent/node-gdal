#!/bin/bash

if [[ "$(uname -s)" == 'Linux' ]]; then
    sudo apt-get -qq update
    sudo apt-get --force-yes -qq install libgdal-dev libgdal1-dev libgdal1h=1.10.0-1~precise1
elif [[ "$(uname -s)" == 'Darwin' ]]; then
    brew uninstall gdal; brew install gdal
fi

npm install --build-from-source --shared_gdal