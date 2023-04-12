#!/usr/bin/env bash
project_name='instagram'

# create database
echo "creating database..."
docker exec -it udemy-course-pg-15 dropdb $project_name
docker exec -it udemy-course-pg-15 createdb $project_name
echo "done"

# create schema
echo "creating schemas..."
psql-execute -d $project_name -f ./sql/${$project_name}/init.sql >/dev/null
echo "done"

# load restore file
echo "loading data..."
docker cp ./sql/${$project_name}/data/ig.sql $DB_CONTAINER_NAME:tmp/ig.sql
docker exec -it $DB_CONTAINER_NAME pg_restore -d $project_name --data-only --single-transaction --disable-triggers --no-owner ./tmp/ig.sql
echo "done"

exit 0