.PHONY: help install install-dev test lint format type-check clean docs

help:
	@echo "BaseTemplate - Development Tasks"
	@echo ""
	@echo "Available commands:"
	@echo "  make install          Sync the project environment with uv"
	@echo "  make install-dev      Sync dev and test dependencies with uv"
	@echo "  make test             Run tests with uv"
	@echo "  make test-cov         Run tests with coverage report"
	@echo "  make lint             Run linting checks with ruff"
	@echo "  make format           Format code with ruff"
	@echo "  make type-check       Run type checking with mypy"
	@echo "  make clean            Remove build artifacts and cache files"
	@echo "  make help             Show this help message"

install:
	uv sync

install-dev:
	uv sync --group dev --group test

test:
	uv run pytest

test-cov:
	uv run pytest --cov=basetemplate --cov-report=html --cov-report=term-missing

lint:
	uv run ruff check .

format:
	uv run ruff format .

type-check:
	uv run mypy basetemplate

clean:
	find . -type f -name '*.py[cod]' -delete
	find . -type f -name '*$$py.class' -delete
	find . -type d -name '__pycache__' -delete
	find . -type d -name '*.egg-info' -exec rm -rf {} +
	rm -rf build/
	rm -rf dist/
	rm -rf htmlcov/
	rm -rf .coverage
	rm -rf .pytest_cache/
	rm -rf .mypy_cache/
