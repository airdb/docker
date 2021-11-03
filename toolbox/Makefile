SERVICE := toolbox

all: help

help: ## Show help messages
	@echo "Container - ${SERVICE} "
	@echo
	@echo "Usage:"
	@echo "  make [target]"
	@echo
	@echo "Commands:"
	@sed -n '/##/s/\(.*\):.*##/  \1#/p' ${MAKEFILE_LIST} | grep -v "MAKEFILE_LIST" | column -t -c 2 -s '#'

up: ## Create and start containers
	sudo docker-compose up -d --build --force-recreate
build: ## Build or rebuild services
	sudo docker-compose build --no-cache

start: ## Start services
	sudo docker-compose start

stop: ## Stop services
	sudo docker-compose stop

restart: ## Restart containers
	sudo docker-compose restart

ps: ## List containers
	sudo docker-compose ps

log logs: ## View output from containers
	sudo docker-compose logs

rm: stop ## Stop and remove stopped service containers
	sudo docker-compose rm ${SERVICE}

bash: ## Execute a command in a running container
	sudo docker-compose exec ${SERVICE} bash
