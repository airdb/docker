SERVICE := builder

all: help

help: ## Show help messages
	@echo "Container - ${SERVICE} "
	@echo
	@echo "Usage:\tmake COMMAND"
	@echo
	@echo "Commands:"
	@sed -n '/##/s/\(.*\):.*##/  \1#/p' ${MAKEFILE_LIST} | grep -v "MAKEFILE_LIST" | column -t -c 2 -s '#'

patch: ## patch nginx and openssl
	echo 1

build: ## Configure & Build nginx
	echo build

docker: ## Create and start containers
	docker compose build #--no-cache
	docker compose up -d --force-recreate

bash: ## Execute a command in a running container
	docker compose exec ${SERVICE} bash
