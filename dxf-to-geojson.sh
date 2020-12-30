#!/bin/bash

set -x
set -e

find /data -type f -iname "*.dxf" -print0 | while read -d $'\0' f
do
    export DXF_ENCODING="UTF-8"
    ogr2ogr -f 'GeoJSON' \
        "${f%.dxf}.geojson" \
        "${f}"
done
