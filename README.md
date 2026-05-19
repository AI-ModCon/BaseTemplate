# basetemplate

This repository provides tools and resources that can serve as a template for other repositories created by the ModCon Base team and other Genesis Mission collaborators. 

## Overview

BaseTemplate provides a foundation for creating new repositories following open-source best practices and the ModCon team's standards.

## Features

- Professional repository structure
- Pre-configured for Python projects
- GitHub Actions CI/CD templates
- Code of conduct and contributing guidelines
- Issue and pull request templates
- Comprehensive documentation structure

## Required Elements for Base Public Repositories

Every Base public repository must include the following elements to ensure quality, maintainability, and compliance with open-source standards:

### License
- An open-source license (Apache 2.0, MIT, or BSD recommended)
- License file (`LICENSE`) clearly specifying the license terms
- License declaration in `pyproject.toml` or package metadata

### Documentation
- A `docs/` folder with a proper documentation structure
- A comprehensive `README.md` at the repository root
- Getting started guide and usage examples
- API documentation (if applicable)

### Testing
- A test suite configured with pytest
- Tests in a `tests/` directory
- Coverage reporting configured (e.g., via pytest-cov)
- CI/CD integration to run tests automatically

### Community Guidelines
- `CONTRIBUTING.md` file with contribution guidelines
- `CODE_OF_CONDUCT.md` file outlining community standards
- Clear procedures for reporting issues and submitting pull requests

### Project Metadata
- `pyproject.toml` or `setup.py` with clear metadata including:
  - Project name and description
  - Author and contact information
  - Dependencies and optional dependencies
  - Supported Python versions
  - Relevant classifiers

### Development Setup
- `Makefile` or equivalent build automation
- Clear instructions for setting up a development environment
- Dependencies documented in `requirements.txt` and `requirements-dev.txt`
- Example commands for linting, testing, and building

### Acknowledgments
- Acknowledgment of Genesis Mission support in the README or `ACKNOWLEDGMENTS.md`
- Recognition of funding sources and institutional support

## Quick Start

### Prerequisites

- Python 3.8 or higher
- Git

### Installation

```bash
git clone https://github.com/AI-ModCon/BaseTemplate.git
cd basetemplate
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
pip install -r requirements.txt
```

### Development

```bash
# Install development dependencies
pip install -r requirements-dev.txt

# Run tests
pytest

# Run linting
black . --check
flake8 .
```

## Usage

For detailed usage information, see the [documentation](./docs) directory.

## Contributing

We welcome contributions! Please see [CONTRIBUTING.md](./CONTRIBUTING.md) for guidelines on how to contribute to this project.

## Support

This project acknowledges support from the US Department of Energy's Genesis Mission.

## License

This project is licensed under the Apache License 2.0 - see the [LICENSE](./LICENSE) file for details.

## Code of Conduct

Please note that this project is released with a [Contributor Code of Conduct](./CODE_OF_CONDUCT.md). By participating in this project you agree to abide by its terms.


## Questions or Issues?

For questions or to report issues, please open an issue on [GitHub](https://github.com/your-org/basetemplate/issues).
