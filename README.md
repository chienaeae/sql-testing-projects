# SQL Testing Projects

## Introduction
This is a SQL Testing Environment for POC/Development/Prototyping scenarios. This project includes direnv settings and scripts to set up and connect to database. The (PG) database will run in a container. Therefore, it won't mess up your PC environment.

## Setup
To Set up `Direnv Global env` block in `.envrc` file

```bash
...
# Direnv Global env
# ==============
export DB_CONTAINER_NAME="udemy-course-pg-15"
export DB_CONTAINER_PORT="1111"
export DB_DEFAULT_DATABASE="udemy-course"
...

```

## Convenient commands

**Connect to psql**
```bash
psql-connect -d <database_name>
```

**Execute sql file**
```bash
psql-execute -d <database_name> -d <file_location>
```
