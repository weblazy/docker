#!/bin/bash 
mkdir -p nginx/www
mkdir -p nginx/conf
if [ ! -f nginx/conf/nginx.conf ]; then
    echo '' > nginx/conf/nginx.conf
fi
mkdir -p nginx/conf.d
mkdir -p nginx/logs
cd nginx
docker run --net=host --name nginx-1 -v $PWD/www:/www -v $PWD/conf/nginx.conf:/etc/nginx/nginx.conf -v $PWD/logs:/logs -v $PWD/conf.d:/etc/nginx/conf.d  -d nginx  