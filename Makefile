postgresql:
	docker run --name ${DB_CONTAINER_NAME} \
    -p ${DB_CONTAINER_PORT}:5432 \
    -e POSTGRES_USER=root \
    -e POSTGRES_PASSWORD=mysecretpassword \
    -d postgres:15-alpine

createdb:
	docker exec -it ${DB_CONTAINER_NAME} createdb --username=root --owner=root ${DB_DEFAULT_DATABASE}

dropdb:
	docker exec -it ${DB_CONTAINER_NAME} dropdb ${DB_DEFAULT_DATABASE}

connect:
	docker exec -it ${DB_CONTAINER_NAME} /bin/bash

.PHONY: postgresql createdb dropdb connect
