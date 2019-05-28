## Help task

```makefile
.PHONY: help
help: ## Print this message
    @grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort \
        | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

```

```shell
$ make help
build                           build docker image for this presentation
help                            print help
pdf                             pdf description
reset                           reset application
start                           run docker image and expose slides through port 8080
dev                             start development server
```
<span class="source">source: https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html</span>
