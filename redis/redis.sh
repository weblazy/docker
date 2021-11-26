#!/bin/bash 
set -e 
mkdir -p redis/data 
docker run -p 6379:6379 --name redis-1 -v $PWD/redis/data:/data  -d redis redis-server --appendonly yes --requirepass "123456"