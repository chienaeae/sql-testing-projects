#!/usr/bin/env bash
project_name='transactions'

psql-execute -d $project_name -f ./${project_name}/drop.sql
