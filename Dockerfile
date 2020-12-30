FROM debian:testing

RUN apt update -y \
 && apt upgrade -y

RUN apt install -y \
    wget \
    gdal-bin \
    libc-bin

COPY ./dxf-to-geojson.sh /dxf-to-geojson/dxf-to-geojson
RUN chmod +x /dxf-to-geojson/dxf-to-geojson

CMD /dxf-to-geojson/dxf-to-geojson



