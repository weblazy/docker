#!/bin/bash 
set -e 
docker run -d \
  -p 27100:3000 \
  --name=grafana \
  -e "GF_SERVER_ROOT_URL=http://127.0.0.1/grafana" \
  -v $PWD/grafana/grafana-storage:/var/lib/grafana \
  grafana/grafana