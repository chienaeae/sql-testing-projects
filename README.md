# SQL Testing Projects

## Introduction
This is a SQL Testing Environment for POC/Development/Prototyping scenarios. This project includes direnv settings and scripts to set up and connect to database. The (PG) database will run in a container. Therefore, it won't mess up your PC environment.

## Prerequisite

### direnv
This project use a tool - **direnv** to load environment variables. Find more details, see the official website [here](https://direnv.net/).


### docker
This project aims to containerized your testing database, and leverage docker to build and manage the container.

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

## Quick Start
**Run the containerized PostgreSQL** 
``` bash
make postgresql
```
**Create the default database**
``` bash
make createdb
```
**Connect to the default database**
``` bash
make connect
```
**Drop the default database**
``` bash
make dropdb
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
