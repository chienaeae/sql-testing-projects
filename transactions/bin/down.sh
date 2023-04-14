#!/usr/bin/env bash
project_name='transactions'

psql-migrate -d $project_name down