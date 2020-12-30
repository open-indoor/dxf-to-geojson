#!/bin/bash

set -x
set -e
docker build \
    --label openindoor/dxf-to-geojson \
    -t openindoor/dxf-to-geojson \
    dxf-to-geojson

docker run \
    -v $(pwd)/../private_data/PLANS:/data \
    -v $(pwd)/dxf-to-geojson/dxf-to-geojson.sh:/dxf-to-geojson/dxf-to-geojson \
    -it openindoor/dxf-to-geojson