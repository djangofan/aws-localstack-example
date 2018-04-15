#!/usr/bin/env bash
#
# Database Dump restore with dockerized PostgreSQL server
#
DOCKER_DB_NAME="$(docker-compose ps -q postgres)"
DB_HOSTNAME=localstack
DB_USER=postgres

LOCAL_DUMP_PATH="/var/tmp/local.dump"

if [ "X" != "X$1" ]
then
  LOCAL_DUMP_PATH=$1
  echo "restoring dump from $1"
fi

docker-compose up -d postgres

sleep 2000
docker exec -i "${DOCKER_DB_NAME}" pg_restore -C --clean --no-acl --no-owner -U "${DB_USER}" -d "${DB_HOSTNAME}" < "${LOCAL_DUMP_PATH}"

docker-compose stop postgres
