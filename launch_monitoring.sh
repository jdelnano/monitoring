#!/bin/bash
set -euo pipefail

if ! [ -d $(pwd)/grafana-storage ] || ! [ -d $(pwd)/prometheus-storage ]; then
    mkdir -p ./grafana-storage && sudo chown -R 472:472 ./grafana-storage
    mkdir -p ./prometheus-storage && sudo chown -R 65534:65534 ./prometheus-storage
fi

# launch container setup
docker-compose up -d
