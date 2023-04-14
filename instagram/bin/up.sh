#!/usr/bin/env bash
project_name='instagram'

# create database
echo "creating database..."
docker exec -it $DB_CONTAINER_NAME dropdb $project_name
docker exec -it $DB_CONTAINER_NAME createdb $project_name
echo "done"

# create schema
echo "migrating schemas..."
psql-migrate -d $project_name up
echo "done"

# load restore file
echo "loading data..."
docker cp ./${project_name}/data/ig.sql $DB_CONTAINER_NAME:tmp/ig.sql
docker exec -it $DB_CONTAINER_NAME pg_restore -d $project_name --data-only --single-transaction --disable-triggers --no-owner ./tmp/ig.sql
echo "done"

exit 0