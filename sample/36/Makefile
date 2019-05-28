VERSION := $(shell head -n 1 VERSION)

clean: ## Cleanup any build binaries or packages
    mvn clean

.PHONY: run-dependencies
run-dependencies: ## : run-dependencies description
    docker-compose up -d

.PHONY: run
run: ## run description
    mvn spring-boot:run

.PHONY: run-dev
run-dev: ## run-dev description
    mvn spring-boot:run -Dspring-boot.run.profiles=dev

.PHONY: unit-test
unit-test: ## unit-test description
    mvn test

.PHONY: integration-test
integration-test: ## integration-test description
    mvn integration-test

.PHONY: build
build: clean ## Build the binary
    mvn -Pversion=${VERSION} bootJar

