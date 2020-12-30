# dxf-to-geojson
Tool to convert dxf file format to raw geojson

## Build

```
docker build \
    --label openindoor/dxf-to-geojson \
    -t openindoor/dxf-to-geojson \
    dxf-to-geojson
```

## Deploy

```
docker tag openindoor/dxf-to-geojson openindoor/dxf-to-geojson:1.0.0
docker push  openindoor/dxf-to-geojson:1.0.0
```

## Usage

```
docker run \
    -v $(pwd)/../private_data/PLANS:/data \
    -it \
    openindoor/dxf-to-geojson
```