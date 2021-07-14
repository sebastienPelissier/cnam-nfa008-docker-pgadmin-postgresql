#------------------------------------------------------------------------------------------------
# Project VARS
#------------------------------------------------------------------------------------------------
project_name=cnamPostgresql

####################################
# General management (docker)
####################################

start:
	@echo "$(step) Starting $(project_name) $(step)"
	@docker-compose up -d

stop:
	@docker-compose down

restart: stop start

postgre:
	@docker exec -it cnampostgresql_db_1 psql -U cnam -W cnam

container:
	@docker-compose run db bash

build:
	@docker-compose build

state:
	@echo "$(step) Etat $(project_name) $(step)"
	@$(compose) ps

remove: stop
	@docker-compose  rm --force