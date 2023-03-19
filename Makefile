.PHONY: clean-venv
clean-venv:
	@rm -rf venv

.PHONY: init-venv
init-venv: clean-venv
	pip3 install virtualenv; \
	virtualenv venv --python=python3.11; \
	. ./venv/bin/activate; \
	pip3 install -r requirements.txt;


.PHONY: build
build:
	@docker-compose build

.PHONY: up
up:
	@docker-compose up -d

.PHONY: down
down:
	@docker-compose down 

.PHONY: stop
stop:
	@docker-compose stop
