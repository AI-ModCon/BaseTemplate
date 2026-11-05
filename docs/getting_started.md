# Getting Started

Welcome to BaseTemplate! This guide will help you get started with this project.

## Adopting the Template

For a new repository, use the starter files that fit your project. For an existing
repository or organization transfer, apply the [baseline](../README.md#required-elements-for-modcon-base-public-repositories)
in place: preserve history, layout, interfaces, and qualified dependency stacks.

- Replace template package names, URLs, contacts, acknowledgments, and support/version
  statements with accurate project-specific values. Confirm the security contact and
  response commitment before publishing them.
- Select the applicable requirements and document any non-applicability. Keep Python
  package files, coverage, and the CI Python matrix only when appropriate.
- Review public artifacts against the shared
  [sensitive-information guidance](../SECURITY.md#credentials-and-sensitive-outputs).
  Do not require a separate sanitization policy in each repository. Links and local
  reminders are optional; add workflow-specific instructions when useful.
- Adapt CI to the project's real validation commands. Pin external actions to reviewed
  full commit SHAs and maintain those pins with dependency-update automation.
- The existing CI workflow checks spelling and local Markdown links/fragments on
  pushes and pull requests. External URL checking is optional: manually run CI and
  select `check_external_urls` to enable it (off by default). Results appear in the
  job summary but do not fail the job or workflow, even if the checker itself errors.
  External URL checks never run automatically.
- Keep external reporting opt-in. The CI example uploads coverage to Codecov only
  when the repository variable `ENABLE_CODECOV` is `true`; review what is sent first.
- Publishing is opt-in. Remove the publish workflow for non-packages. For PyPI, first
  configure a Trusted Publisher matching this repository, `publish.yml`, and the `pypi`
  environment. Protect release tags and configure environment approval/release-tag
  restrictions, then set the repository variable `ENABLE_PYPI_PUBLISH` to `true`.
  The example builds on a published `v*` tag release and publishes those artifacts
  from a separate OIDC-enabled job, without a long-lived API token.
- Document external calls, data flows, resource costs, and operational limits before
  users run examples; see the [security guidance](../SECURITY.md#operational-guidance).

### Administrator Setup

Repository files do not enforce GitHub settings. An administrator should verify:

- Required human approvals and status checks on the default branch, review ownership
  for workflows and other sensitive paths (for example via `CODEOWNERS`), and restricted
  bypass/force-push and release permissions.
- Private vulnerability reporting where available, a monitored fallback contact,
  dependency alerts, secret scanning, and push protection. Review supported secret
  patterns and permitted bypasses; scanners do not detect every secret.
- Least-privilege workflow permissions, approval for untrusted contributors, and no
  untrusted PR execution on persistent or privileged HPC/self-hosted runners.
- Regular maintainer-access reviews and the organization's MFA policy.
- Protected publishing environments and release tags before enabling publication.

Record which controls were verified, by whom, and when. A checked-in checklist is
not proof that live settings are enabled.

## Python Starter Setup

The following instructions apply to the included Python example.

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
