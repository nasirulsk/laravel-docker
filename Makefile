setup:
	@make build
	@make up
	@make composer-install
build:
	docker-compose build --no-cache --force-rm
down:
	docker-compose stop
up:
	docker-compose up -d
composer-install:
	docker exec fatagent bash -c "composer install --ignore-platform-reqs"
migrate:
	docker exec fatagent bash -c "php artisan migrate"
seed:
	docker exec fatagent bash -c "php artisan db:seed"
import-db:
	# docker exec -i fatagent_mysql_container mysql -uroot -proot docker_fatagent < db.sql
