.DEFAULT_GOAL := help
.PHONY: test

all: test shellcheck

test:
	@./test/*.bats

shellcheck: ## test shellcheck.
	@shellcheck ./bin/*

help: ## Self-documented Makefile
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
  	| sort \
  	| awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
