default: development server

development: dependencies assets dev-migrations test-migrations

dependencies: php-dependencies
	cd src/Soundvenirs/HomepageBundle ; bower install

php-dependencies:
	composer install -n

migrations: dev-migrations test-migrations

dev-migrations:
	php bin/console doctrine:migrations:migrate -n --env dev

test-migrations:
	php bin/console doctrine:migrations:migrate -n --env test

assets:
	php bin/console assets:install

server:
	php -S 0.0.0.0:8080 -t web/

travisci: php-dependencies assets test-migrations