FROM postgres

MAINTAINER "Michael Bowman <bowmanmc@gmail.com>"

# Install PostGIS and OSM Importer
RUN apt-get update
RUN apt-get install -y postgis osm2pgsql

# Where the pbf file is
VOLUME /data

# Init scripts
ADD init_db.sql /docker-entrypoint-initdb.d/
ADD init_osm.sh /docker-entrypoint-initdb.d/
