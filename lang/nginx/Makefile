SERVICE := nginx

all: help

help: ## Show help messages
	@echo "Container - ${SERVICE} "
	@echo
	@echo "Usage:\tmake COMMAND"
	@echo
	@echo "Commands:"
	@sed -n '/##/s/\(.*\):.*##/  \1#/p' ${MAKEFILE_LIST} | grep -v "MAKEFILE_LIST" | column -t -c 2 -s '#'

up:
	docker compose up -d --build --force-recreate

build:
	docker compose build --no-cache

start:
	docker compose start

stop:
	docker compose stop

restart:
	docker compose restart

ps:
	docker compose ps

log logs:
	docker compose logs

logf:
	docker compose logs -f

rm: stop
	docker compose rm ${SERVICE}

bash:
	docker compose exec ${SERVICE} bash
