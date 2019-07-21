build:
	@docker run -it --rm --name DevMumbles -v $$(pwd):/mumbles:delegated -w /mumbles -p 8080:8080 dev-mumbles swift build

docker-build:
	@docker build -f Dockerfile -t dev-mumbles ./

kill:
	@docker kill DevMumbles

run:
	@docker run -it --rm --name DevMumbles -v $$(pwd):/mumbles:delegated -w /mumbles -p 8080:8080 dev-mumbles

test:
	@docker exec -it DevMumbles swift test
