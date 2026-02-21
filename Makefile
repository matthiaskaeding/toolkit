.PHONY: test lint

test:
	@echo "Running make test target from $$(pwd)"

lint:
	ruff format
	ruff check --fix
