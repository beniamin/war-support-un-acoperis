start:
	docker-compose up -d

stop:
	docker-compose down

build:
	docker-compose build

install:
	docker-compose up -d
	docker-compose exec php sh -c 'composer install'
	docker-compose exec php sh -c 'artisan migrate --seed'
	docker-compose exec php sh -c 'artisan key:generate'

logs:
	docker-compose logs -f

shell:
	docker-compose exec php bash

migrate:
	docker-compose exec php -- php artisan migrate

seed:
	docker-compose exec php -- php artisan db:seed

cc:
	docker-compose exec php -- php artisan ca:cl
