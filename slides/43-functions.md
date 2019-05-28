
## Functions

```makefile
define run_test
	PYTHONPATH=$(shell pwd) python3 -m unittest -k $(1)
endef

.PHONY: unit-test
unit-test: ## Runs unit tests
	$(call run_test,'unit')

.PHONY: integration-test
integration-test: ## Runs integration tests
	$(call run_test,'integration')

```