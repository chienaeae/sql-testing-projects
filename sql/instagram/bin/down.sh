#!/usr/bin/env bash
project_name='instagram'

psql-execute -d $project_name -f ./sql/${project_name}/drop.sql
