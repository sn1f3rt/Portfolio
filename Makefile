env:
	uv venv

install:
	uv sync --no-dev

install-dev:
	uv sync --all-extras

run:
	uv run launcher.py

format:
	ruff check --select I --fix .
	ruff format .

.PHONY: env install install-dev run format
.DEFAULT_GOAL := run
