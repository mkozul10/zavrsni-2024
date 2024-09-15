DOCKER = docker
DOCKER_COMPOSE = docker compose
PROJECT_NAME = inventory-app


help: ## Show this help
	@echo
	@echo "Choose a command to run in "$(PROJECT_NAME)":"
	@echo
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

start: ## Start containers in detached mode
	$(DOCKER_COMPOSE) up -d
.PHONY: start

stop: ## Stop containers
	$(DOCKER_COMPOSE) down
.PHONY: stop

stopv: ## Stop containers and remove all associated volumes
	$(DOCKER_COMPOSE) down -v
.PHONY: stop

restart: ## Restart running containers
	make stop && make start
	
.PHONY: restart
