#!/bin/bash

echo "Starting Development Version of MapTop Database..."

echo "Building Image..."
docker build -t maptop-db .

echo "Starting Image..."
docker run --env-file ./test.env -v ~/projects/maptop-db/data:/data -p 5432:5432 -d maptop-db
