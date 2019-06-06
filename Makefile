.PHONY: build
build: ## build docker image for this presentation
	@echo "+ $@"
	@docker build -t make-me-up .

.PHONY: run
start: build ## run docker image and expose slides through port 8080
	@echo "+ $@"
	@docker run -p 8080:8080 -d make-me-up

.PHONY: start
run: ## start development server
	@echo "+ $@"
	@npx fusuma start

.PHONY: reset
reset: ## reset application
	@echo "+ $@"
	@rm -rf node_modules package-lock.json
	@npm i fusuma@1.1.0 -D
	@npm install --save @fortawesome/fontawesome-free

.PHONY: pdf
pdf: ## pdf description
	@echo "+ $@"
	@npx fusuma pdf
	@rm -r dist/

.PHONY: help
help: ## print help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
