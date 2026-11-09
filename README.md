# basetemplate

This repository provides tools and resources that can serve as a template for other repositories created by the ModCon Base team and other Genesis Mission collaborators. 

## Overview

BaseTemplate provides a foundation for creating new repositories following open-source best practices and the ModCon team's standards.

It provides a Python starter and a shared repository-quality baseline, not a required
language or directory layout. Existing projects should retain their structure and
qualified dependency stacks. Apply the requirements below to the artifacts a project
distributes; document justified non-applicability rather than adding unused scaffolding.

## Features

- Professional repository structure
- Pre-configured for Python projects
- GitHub Actions CI/CD templates
- Code of conduct and contributing guidelines
- Issue and pull request templates
- Comprehensive documentation structure

## Required Elements for ModCon Base Public Repositories

Every Base public repository must address the following baseline. Python-specific
tools in this starter are examples, not consortium-wide requirements.

### License
- An open-source license (Apache 2.0, MIT, or BSD recommended)
- License file (`LICENSE`) clearly specifying the license terms
- Consistent license declaration in package metadata, when distributing a package
- Attribution and third-party notices for redistributed code, data, and model assets

### Documentation
- Discoverable, organized documentation (`docs/` is recommended when useful)
- A comprehensive `README.md` at the repository root
- Getting started guide and usage examples
- API documentation (if applicable)

### Testing
- Validation appropriate to the repository: tests, schema/fixture checks, skill
  validation, or documentation/example checks
- Documented commands and CI integration for those checks
- Coverage for executable code where meaningful; pytest and `tests/` are Python defaults

### Community Guidelines
- `CONTRIBUTING.md` file with contribution guidelines
  - This should include a stated policy on AI-generated/AI-assisted contributions
- `CODE_OF_CONDUCT.md` file outlining community standards
- Clear procedures for reporting issues and submitting pull requests
- Branch protection to ensure that sufficient review is being performed on anything going into `main`
- Private security-reporting guidance and safe handling of credentials and operational
  data; see [Security Policy](./SECURITY.md)

Sensitive-information handling is a review standard, not a requirement to duplicate
a sanitization policy in every repository. Review actual public artifacts using the
[shared guidance](./SECURITY.md#credentials-and-sensitive-outputs). Missing policy
wording alone is not a compliance failure. Link to shared guidance or add local
instructions only where the project's workflows need them.

### Project Metadata
- Project name, purpose, maintainer/contact, and support status
- For packages, ecosystem-appropriate metadata (`pyproject.toml` for Python), including
  dependencies, supported runtimes, and repository/documentation URLs

### Development Setup
- `Makefile`, scripts, or equivalent documented task commands
- Clear instructions for setting up a development environment
- Reproducible dependency setup appropriate to the project: lockfiles, pinned
  requirements/images, or documented site-provided stacks
- Example commands for applicable validation and build tasks

### Acknowledgments
- Acknowledgment of Genesis Mission support in the README
- Government disclaimer in the README
- [Optional] Recognition of other funding sources

### Additional Requirements by Project Type

Projects may fit more than one type. Small content repositories need not become packages.

| Project type | Additional evidence |
| --- | --- |
| Library or CLI | Installation, tests, supported runtimes, and public interfaces |
| Agent skill or catalog | Client compatibility, tool permissions, external dependencies, installation/removal, and instruction/script validation |
| API or schema specification | Versioned contracts, fixtures, conformance checks, and breaking-change policy |
| Service, container, or HPC application | Runtime/trust boundary, deployment prerequisites, health checks, shutdown/cleanup, and tested platforms |
| Benchmark, model, or data workflow | Input provenance and rights, task/metrics, reference outputs, reproduction command, and resource needs |
| Tutorial or content | Prerequisites, validated walkthrough or content checks, attribution, and cleanup where applicable |

### Support and Reproducibility

Distinguish declared compatibility from configurations actually tested. Document
hardware, schedulers, system modules/native tools, accounts, and network requirements
where relevant. Identify downloads, external model/API calls, telemetry, charges, and
job submissions before users run the quick start. Provide a small smoke check and
separate expensive, network-dependent, or site-specific validation.

For reproducible scientific results, record source and dependency revisions,
configuration, seeds, and input/model artifact identifiers or hashes. Passing portable
CI does not establish hardware qualification, scientific validity, or production readiness.

## Quick Start

These commands and the supplied CI matrix apply to the Python starter. For adoption
and administrator setup, see [Getting Started](./docs/getting_started.md#adopting-the-template).

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

This material is based upon work supported by the U.S. Department of Energy (DOE), Office of Science, Office of Advanced Scientific Computing Research, as part of the Genesis Mission Platform.

This Software was developed under funding from the U.S. DOE and the U.S. Government consequently retains certain rights. As such, the U.S. Government has been granted for itself and others acting on its behalf a paid-up, nonexclusive, irrevocable, worldwide license in the Software to reproduce, distribute copies to the public, prepare derivative works, and perform publicly and display publicly, and to permit others to do so.

## License

This project is licensed under the Apache License 2.0 - see the [LICENSE](./LICENSE) file for details.

## Code of Conduct

Please note that this project is released with a [Contributor Code of Conduct](./CODE_OF_CONDUCT.md). By participating in this project you agree to abide by its terms.


## Questions or Issues?

For questions or to report issues, please open an issue on [GitHub](https://github.com/AI-ModCon/BaseTemplate/issues).
