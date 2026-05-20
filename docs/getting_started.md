# Getting Started

Welcome to BaseTemplate! This guide will help you get started with this project.

## Prerequisites

- Python 3.11 or higher
- pip (Python package manager)
- git (for version control)

## Installation

### 1. Clone the Repository

```bash
git clone https://github.com/your-org/basetemplate.git
cd basetemplate
```

### 2. Create a Virtual Environment

```bash
python -m venv venv
```

### 3. Activate the Virtual Environment

**On macOS and Linux:**
```bash
source venv/bin/activate
```

**On Windows:**
```bash
venv\Scripts\activate
```

### 4. Install Dependencies

```bash
pip install -r requirements.txt
```

## Development Setup

For development work, install the development dependencies:

```bash
pip install -r requirements-dev.txt
```

## Running Tests

```bash
pytest
```

Run tests with coverage:

```bash
pytest --cov=basetemplate --cov-report=html
```

## Code Style

We use Black for code formatting and Flake8 for linting.

### Format Code

```bash
black .
```

### Check Code Style

```bash
black . --check
flake8 .
```

### Sort Imports

```bash
isort .
```

## Documentation

For more detailed documentation, see the [docs](.) directory.

## Troubleshooting

### Virtual Environment Issues

If you encounter issues with the virtual environment:

```bash
# Remove and recreate
rm -rf venv
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
pip install -r requirements-dev.txt
```

### Dependency Issues

If you have issues installing dependencies:

```bash
pip install --upgrade pip
pip install -r requirements.txt --force-reinstall
```

## Next Steps

- Read the [Contributing Guidelines](../CONTRIBUTING.md)
- Check out the [examples](./examples) directory
- Review the [API documentation](./api)

## Support

For questions or issues, please open a GitHub issue or check the [FAQ](./faq.md).
