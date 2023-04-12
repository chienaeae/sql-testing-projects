#!/usr/bin/env bash
project_name='transactions'

# create database
echo "creating database..."
docker exec -it udemy-course-pg-15 dropdb $project_name
docker exec -it udemy-course-pg-15 createdb $project_name
echo "done"

# create schema
echo "creating schemas..."
psql-execute -d $project_name -f ./sql/${project_name}/init.sql >/dev/null
echo "done"

exit 0