SERVICE := testdb8

all: help

help: ## Show help messages
	@echo "Container - ${SERVICE} "
	@echo
	@echo "Usage:\tmake COMMAND"
	@echo
	@echo "Commands:"
	@sed -n '/##/s/\(.*\):.*##/  \1#/p' ${MAKEFILE_LIST} | grep -v "MAKEFILE_LIST" | column -t -c 2 -s '#'

build: ## Build
	#docker compose build --no-cache
	docker compose ${SERVICE} build

up: ## Create and start containers
	docker compose up ${SERVICE} -d --force-recreate

start: ## Start services
	docker compose start ${SERVICE}

stop: ## Stop services
	docker compose stop ${SERVICE}

logs: ## Check logs
	docker compose logs ${SERVICE}

bash: ## Execute a command in a running container
	docker compose exec ${SERVICE} /bin/bash
