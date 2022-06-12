SERVICE := redoc

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
bash:
	docker compose exec ${SERVICE} bash
