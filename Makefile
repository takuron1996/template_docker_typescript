SHELL = /bin/bash
CONTAINER_NAME = app
APPLICATION = application
DOCKER = docker exec $(CONTAINER_NAME)

prepare: build up

run: format lint
	$(DOCKER) npm start

test: format lint
	$(DOCKER) npm run test

sh:
	docker exec -it $(CONTAINER_NAME) /bin/sh

up:
	docker-compose up -d

build:
	docker-compose build

down:
	docker-compose down

install:
	$(DOCKER) npm install

format:
	$(DOCKER) npm run format

lint:
	$(DOCKER) npm run lint