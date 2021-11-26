#!/bin/bash 
set -e 
mkdir -p nginx/www nginx/conf nginx/conf.d nginx/logs
if [ ! -f nginx/conf/nginx.conf ]; then
    curl -o nginx/conf/nginx.conf https://raw.githubusercontent.com/weblazy/docker/master/nginx/nginx.conf
fi
if [ ! -f nginx/conf.d/local.conf ]; then
    curl -o nginx/conf.d/local.conf https://raw.githubusercontent.com/weblazy/docker/master/nginx/local.conf
fi
if [ ! -f nginx/conf.d/forward.conf ]; then
    curl -o nginx/conf.d/forward.conf https://raw.githubusercontent.com/weblazy/docker/master/nginx/forward.conf
fi
if [ ! -f nginx/www/index.html ]; then
    curl -o nginx/www/index.html https://raw.githubusercontent.com/weblazy/docker/master/nginx/index.html
fi
docker run --net=host --name nginx-1 -v $PWD/nginx/www:/www -v $PWD/nginx/conf/nginx.conf:/etc/nginx/nginx.conf -v $PWD/nginx/logs:/logs -v $PWD/nginx/conf.d:/etc/nginx/conf.d  -d nginx  