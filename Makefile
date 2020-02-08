build:
	@docker run -it --rm --name DevMumbles -v $$(pwd):/mumbles:delegated -w /mumbles -p 8080:8080 -p 9000:9000 dev-mumbles swift build

compose-build:
	@docker-compose build

compose-build-js:
	@docker-compose exec web npm run build

compose-build-swift:
	@docker-compose exec web swift build

compose-console:
	@docker-compose exec web bash

compose-db-console:
	@docker-compose exec couchdb bash

compose-kill:
	@docker-compose down

compose-restart:
	@docker-compose restart web

compose-run:
	@docker-compose up

compose-test:
	@docker-compose exec web swift test

console:
	@docker exec -it DevMumbles bash

docker-build:
	@docker build -f Dockerfile -t dev-mumbles ./

kill:
	@docker kill DevMumbles

run:
	@docker run -it --rm --name DevMumbles -v $$(pwd):/mumbles:delegated -w /mumbles -p 8080:8080 -p 9000:9000 dev-mumbles

test:
	@docker exec -it DevMumbles swift test
