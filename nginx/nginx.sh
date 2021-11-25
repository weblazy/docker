#!/bin/bash 
mkdir -p nginx/www
mkdir -p nginx/conf
if [ ! -f nginx/conf/nginx.conf ]; then
    curl -o nginx/conf/nginx.conf https://raw.githubusercontent.com/weblazy/docker/master/nginx/nginx.conf
fi
mkdir -p nginx/conf.d
mkdir -p nginx/logs
docker run --net=host --name nginx-1 -v $PWD/nginx/www:/www -v $PWD/nginx/conf/nginx.conf:/etc/nginx/nginx.conf -v $PWD/nginx/logs:/logs -v $PWD/nginx/conf.d:/etc/nginx/conf.d  -d nginx  