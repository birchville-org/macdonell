.PHONY: all build clean docs-build docs-serve

all: build

build:
	@./scripts/build.sh

clean:
	@rm -f dist/*.pdf
	@rm -rf site/

docs-build:
	@uv run --with mkdocs-material --with mkdocs-static-i18n mkdocs build --strict

docs-serve:
	@uv run --with mkdocs-material --with mkdocs-static-i18n mkdocs serve

