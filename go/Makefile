SERVICE := golang

up:
	sudo docker-compose up -d --build --force-recreate
build:
	sudo docker-compose build --no-cache

start:
	sudo docker-compose start

stop:
	sudo docker-compose stop

restart:
	sudo docker-compose restart

ps:
	sudo docker-compose ps

log logs:
	sudo docker-compose logs
bash:
	sudo docker-compose exec ${SERVICE} bash
