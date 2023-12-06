# LABEL Maintainer="dean"  Description="https://github.com/deancn"
SERVICE := toolbox

all: help

help: ## Show help messages
	@echo "Container - ${SERVICE} "
	@echo
	@echo "Usage:\tmake COMMAND"
	@echo
	@echo "Commands:"
	@sed -n '/##/s/\(.*\):.*##/  \1#/p' ${MAKEFILE_LIST} | grep -v "MAKEFILE_LIST" | column -t -c 2 -s '#'

up: ## Create and start containers
	docker compose up -d --build --force-recreate
build: ## Build or rebuild services
	docker compose build --no-cache

start: ## Start services
	docker compose start

stop: ## Stop services
	docker compose stop

restart: ## Restart containers
	docker compose restart

ps: ## List containers
	docker compose ps

log logs: ## View output from containers
	docker compose logs

rm: stop ## Stop and remove stopped service containers
	docker compose rm ${SERVICE}

bash: ## Execute a command in a running container
	docker compose exec ${SERVICE} bash
