
## Variables

```makefile
.PHONY: bump-version
bump-version: ## bump-version description
	@[ "${part}" ] || ( echo "part is not set"; exit 1 )
	bumpversion --allow-dirty --verbose ${part}
```
