#!/bin/bash
set -e

# Stop the old images
docker-compose down --volumes

# Build the image
docker build -t testserver .

# Start docker compose
docker-compose up -d

# Test curl
curl -i http://0.0.0.0:9080
