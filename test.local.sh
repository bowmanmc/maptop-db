#!/bin/bash

echo "Building Image..."
docker build -t maptop-db .

echo "Starting Image..."
docker run --env-file ./test.env -p 5432:5432 -d maptop-db
