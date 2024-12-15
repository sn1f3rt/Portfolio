env:
	uv venv

rmenv:
	rm -rf .venv

activate:
	source .venv/bin/activate

install:
	uv sync --no-dev

install-dev:
	uv sync --all-extras

dev:
	uv run launcher.py

prod:
	hypercorn --bind 0.0.0.0:13030 --certfile cert.pem --keyfile key.pem launcher:app

format:
	ruff check --select I --fix .
	ruff format .

.PHONY: env rmenv activate install install-dev dev prod format
.DEFAULT_GOAL := dev
