# Getting Started

Welcome to BaseTemplate! This guide will help you get started with this project.

## Prerequisites

- Python 3.11 or higher
- uv (Python package manager)
- git (for version control)

## Installation

### 1. Clone the Repository

```bash
git clone https://github.com/AI-ModCon/BaseTemplate.git
cd basetemplate
```

### 2. Install Dependencies

```bash
uv sync
```

## Development Setup

For development work, use the same `uv` environment and run tools through it:

```bash
uv sync --group dev --group test
```

## Running Tests

```bash
uv run pytest
```

Run tests with coverage:

```bash
uv run pytest --cov=basetemplate --cov-report=html --cov-report=term-missing
```

## Code Style

We use Ruff for both linting and formatting.

### Format Code

```bash
uv run ruff format .
```

### Check Code Style

```bash
uv run ruff check .
```

### Sort Imports

Ruff handles import sorting as part of formatting and linting, so there is no separate `isort` step.

## Documentation

For more detailed documentation, see the [docs](.) directory.

## Troubleshooting

### Virtual Environment Issues

If you encounter issues with the virtual environment:

```bash
# Recreate the environment from the lockfile
uv sync
```

### Dependency Issues

If you have issues installing dependencies, run `uv sync` again to refresh the environment.

## Next Steps

- Read the [Contributing Guidelines](../CONTRIBUTING.md)

## Support

For questions or issues, please open a GitHub issue or check the [FAQ](./faq.md).
