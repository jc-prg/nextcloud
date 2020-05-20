#!/bin/bash
# ----------------------------------
# set arm images in config file .env
# ----------------------------------

MYSQL_IMAGE=./images/mariadb_arm
PROXY_IMAGE=./images/proxy_arm

sed -i.bak \
   -e "s#PROXY_IMAGE=.*#PROXY_IMAGE=${PROXY_IMAGE}#g" \
   -e "s#\#PROXY_IMAGE=.*#PROXY_IMAGE=${PROXY_IMAGE}#g" \
   -e "s#MYSQL_IMAGE=.*#MYSQL_IMAGE=${MYSQL_IMAGE}#g" \
   -e "s#\#MYSQL_IMAGE=.*#MYSQL_IMAGE=${MYSQL_IMAGE}#g" \
    "$(dirname "$0")/.env"
