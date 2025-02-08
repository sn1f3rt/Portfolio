env:
	uv venv

rmenv:
	rm -rf .venv

install:
	uv sync --no-dev

install-dev:
	uv sync --all-extras

install-dev-win:
	uv sync --extra dev

install-prod:
	uv sync --all-extras --no-dev

dev:
	uv run launcher.py

prod:
	hypercorn --bind 0.0.0.0:13130 --certfile cert.pem --keyfile key.pem launcher:app

format:
	ruff check --select I --fix .
	ruff format .

.PHONY: env rmenv install install-dev install-extras dev prod format
.DEFAULT_GOAL := dev
