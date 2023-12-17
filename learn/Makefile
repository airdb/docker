# LABEL Maintainer="airdb team <info@airdb.com>"  Description="https://github.com/airdb"

SERVICE := learning

all: help

help: ## Show help messages
	@echo "\033[32m=================================================================\033[0m"
	@echo "\033[32m|     Welcome to use the docker container, an environment        |\033[0m"
	@echo "\033[32m|     for Linux Operating System learning and practice.          |\033[0m"
	@echo "\033[32m|                                                                |\033[0m"
	@echo "\033[32m|             Handbook: https://airdb.wiki/os/linux              |\033[0m"
	@echo "\033[32m|                                                                |\033[0m"
	@echo "\033[32m|              Enjoy your study journey!                         |\033[0m"
	@echo "\033[32m|              Okay, let's get started!                          |\033[0m"
	@echo "\033[32m|                                                                |\033[0m"
	@echo "\033[32m|                       Created By airdb.team.                   |\033[0m"
	@echo "\033[32m|                 https://github.com/airdb/docker                |\033[0m"
	@echo "\033[32m=================================================================\033[0m"
	@echo
	@echo "Container - ${SERVICE}"
	@echo
	@echo "Usage:\tmake COMMAND"
	@echo
	@echo "Commands:"
	@sed -n '/##/s/\(.*\):.*##/  \1#/p' ${MAKEFILE_LIST} | grep -v "MAKEFILE_LIST" | column -t -c 2 -s '#'

build: ## Build or rebuild docker image
	docker compose build --no-cache

up: ## Create and start containers
	docker compose up -d --force-recreate

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
	docker compose exec ${SERVICE} bash --login
