#!/bin/bash 
set -e 
mkdir -p mysql/data mysql/logs mysql/conf
docker run -p 3306:3306 --name mysql-1 -v $PWD/mysql/conf:/etc/mysql/conf.d -v $PWD/mysql/logs:/logs -v $PWD/mysql/data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=123456 -d mysql:5.7.21