VERSION := $(shell head -n 1 VERSION)

clean: ## Cleanup any build binaries or packages
    mvn clean

unit-test: ## Runs unit tests
    mvn test

build: clean ## Build the binary
    mvn -Pversion=${VERSION} bootJar