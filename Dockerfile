FROM postgres:latest

MAINTAINER "Michael Bowman <bowmanmc@gmail.com>"


RUN apt-get update
RUN apt-get install -y postgis osm2pgsql

VOLUME ["/data"]

# keep container open for debugging
CMD tail -F -n0 /etc/hosts
