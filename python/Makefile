SERVICE := airdb-python

up:
	docker compose --env-file ~/.config/docker/env.browserstack up -d --build --force-recreate
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

rm: stop
	docker compose rm ${SERVICE}

bash:
	docker compose exec ${SERVICE} bash
