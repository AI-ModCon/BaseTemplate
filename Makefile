.PHONY: help install install-dev test lint format type-check clean docs

help:
	@echo "BaseTemplate - Development Tasks"
	@echo ""
	@echo "Available commands:"
	@echo "  make install          Install production dependencies"
	@echo "  make install-dev      Install development dependencies"
	@echo "  make test             Run tests"
	@echo "  make test-cov         Run tests with coverage report"
	@echo "  make lint             Run linting checks"
	@echo "  make format           Format code with black and isort"
	@echo "  make type-check       Run type checking"
	@echo "  make clean            Remove build artifacts and cache files"
	@echo "  make help             Show this help message"

install:
	pip install -r requirements.txt

install-dev:
	pip install -r requirements-dev.txt

test:
	pytest

test-cov:
	pytest --cov=basetemplate --cov-report=html --cov-report=term-missing

lint:
	flake8 basetemplate tests
	black --check basetemplate tests
	isort --check-only basetemplate tests

format:
	black basetemplate tests
	isort basetemplate tests

type-check:
	mypy basetemplate

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
