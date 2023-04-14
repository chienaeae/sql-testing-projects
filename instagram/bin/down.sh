#!/usr/bin/env bash
project_name='instagram'

psql-migrate -d $project_name down
