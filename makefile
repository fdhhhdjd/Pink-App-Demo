# Get file .env
include .env
export $(shell sed 's/=.*//' .env)

# Folder constants
DOCKER_COMPOSE := docker-compose.yml

# Run auto
default:
	docker ps

build:
	docker-compose -f $(DOCKER_COMPOSE) up -d --build

down:
	docker-compose -f $(DOCKER_COMPOSE) down

