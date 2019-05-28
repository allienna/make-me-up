
## Improve readability

- use `@` to suppresses the standard print-action-to-standard-output
- `@echo "+ $@"` at the beginning of the task to print the command

```makefile
.PHONY: build
build: clean ## build description
	@echo "+ $@"
	@mvn -Pversion=${VERSION} bootJar
```

