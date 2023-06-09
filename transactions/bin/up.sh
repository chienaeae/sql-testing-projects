#!/usr/bin/env bash
project_name='transactions'

# create database
echo "creating database..."
docker exec -it $DB_CONTAINER_NAME dropdb $project_name
docker exec -it $DB_CONTAINER_NAME createdb $project_name
echo "done"

# create schema
echo "migrating schemas..."
psql-migrate -d $project_name up
echo "done"

exit 0