#!/usr/bin/env bash
project_name='transactions'

# create database
echo "creating database..."
docker exec -it udemy-course-pg-15 dropdb $project_name
docker exec -it udemy-course-pg-15 createdb $project_name
echo "done"

# create schema
echo "migrating schemas..."
psql-migrate -d $project_name up
echo "done"

exit 0