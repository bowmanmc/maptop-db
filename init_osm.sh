#!/bin/bash

echo "Running osm2pgsql..."
osm2pgsql -s -U $POSTGRES_USER -d $POSTGRES_DB -p $POSTGRES_PASSWORD /data/dayton.osm.pbf
