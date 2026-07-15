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

## Required Elements for ModCon Base Public Repositories

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
  - This should include a stated policy on AI-generated/AI-assisted contributions
- `CODE_OF_CONDUCT.md` file outlining community standards
- Clear procedures for reporting issues and submitting pull requests
- Branch protection to ensure that sufficient review is being performed on anything going into `main`

### Project Metadata
- `pyproject.toml` with clear metadata including:
  - Project name and description
  - Author and contact information
  - Dependencies and optional dependencies
  - Supported Python versions
  - Relevant classifiers

### Development Setup
- `Makefile` or equivalent build automation
- Clear instructions for setting up a development environment
- Dependencies documented in `pyproject.toml` with lock file (`uv.lock`)
- Example commands for linting, testing, and building

### Acknowledgments
- Acknowledgment of Genesis Mission support in the README
- [Optional] Recognition of other funding sources

## Quick Start

### Prerequisites

- Python 3.11 or higher
- [uv](https://docs.astral.sh/uv/getting-started/installation/) (package manager)
- Git

### Installation

```bash
git clone https://github.com/AI-ModCon/BaseTemplate.git
cd basetemplate
uv sync
```

### Development

```bash
# Run tests
uv run pytest

# Lint code
uv run ruff check .

# Format code
uv run ruff format .
```

### Development Tools

This project uses modern Python tools for a streamlined development experience:

- **[uv](https://docs.astral.sh/uv/)**: A fast Python package manager that handles dependency installation and virtual environments. It's significantly faster than pip and ensures reproducible builds with `uv.lock`.
- **[ruff](https://docs.astral.sh/ruff/)**: A unified linter and formatter that replaces multiple tools (flake8, black, isort). It's extremely fast and catches more issues with less configuration.

Other package managers and formatters can be used for new projects, these are simply our default recommendations.

## Usage

For detailed usage information, see the [documentation](./docs) directory.

## Contributing

We welcome contributions! Please see [CONTRIBUTING.md](./CONTRIBUTING.md) for guidelines on how to contribute to this project.

## Support

This project acknowledges support from the U.S. Department of Energy's Genesis Mission.

## License

This project is licensed under the Apache License 2.0 - see the [LICENSE](./LICENSE) file for details.

## Code of Conduct

Please note that this project is released with a [Contributor Code of Conduct](./CODE_OF_CONDUCT.md). By participating in this project you agree to abide by its terms.


## Questions or Issues?

For questions or to report issues, please open an issue on [GitHub](https://github.com/AI-ModCon/BaseTemplate/issues).
