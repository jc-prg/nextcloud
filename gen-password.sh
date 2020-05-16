#!/bin/bash

# based on script found @ https://github.com/jitsi/docker-jitsi-meet/

function generatePassword() {
    openssl rand -hex 16
}

MYSQL_ROOT_PASSWORD=$(generatePassword)
MYSQL_PASSWORD=$(generatePassword)

sed -i.bak \
   -e "s#MYSQL_ROOT_PASSWORD=.*#MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD}#g" \
   -e "s#DB_BACKUP_PASSWORD=.*#DB_BACKUP_PASSWORD=${MYSQL_ROOT_PASSWORD}#g" \
   -e "s#MYSQL_PASSWORD=.*#MYSQL_PASSWORD=${MYSQL_PASSWORD}#g" \
    "$(dirname "$0")/.env"
