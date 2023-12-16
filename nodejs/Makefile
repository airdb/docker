# LABEL Maintainer="airdb team <info@airdb.com>"  Description="https://github.com/airdb"

SERVICE := nodejs

all: help

help: ## Show help messages
	@echo "Container - ${SERVICE} "
	@echo
	@echo "Usage:\tmake COMMAND"
	@echo
	@echo "Commands:"
	@sed -n '/##/s/\(.*\):.*##/  \1#/p' ${MAKEFILE_LIST} | grep -v "MAKEFILE_LIST" | column -t -c 2 -s '#'

up: ## Create and start containers
	docker compose up -d --force-recreate
	#docker compose up -d --build --force-recreate

build: ## Build or rebuild docker image
	docker compose build --no-cache

start: ## Start services
	docker compose start ${SERVICE}

stop: ## Stop services
	docker compose stop ${SERVICE}

restart: ## Restart containers
	docker compose restart ${SERVICE}

ps: ## List containers
	docker compose ps

log logs: ## View output from containers
	docker compose logs ${SERVICE}

rm: stop ## Stop and remove stopped service containers
	docker compose rm ${SERVICE}

bash: ## Execute a command in a running container
	docker compose exec ${SERVICE} bash
