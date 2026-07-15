# Frequently Asked Questions (FAQ)

## General Questions

### What is BaseTemplate?

BaseTemplate is a template repository designed for the ModCon base team to establish consistent best practices and standards across projects.

### Who should use BaseTemplate?

This template is intended for new projects created by the ModCon base team that follow Python-based best practices.

### Can I modify the template?

Yes! Feel free to customize the template to suit your project's needs. All files are provided as starting points.

## Installation & Setup

### Python version requirements?

BaseTemplate requires Python 3.11 or higher. We test against Python 3.11 through 3.14.

### How do I set up a development environment?

See the [Getting Started](./getting_started.md) guide for detailed setup instructions.

### What Python packages are required?

Check [pyproject.toml](../pyproject.toml) for project metadata, dependency groups, and tool configuration. The lockfile is [uv.lock](../uv.lock).

## Contributing

### How do I contribute?

See [CONTRIBUTING.md](../CONTRIBUTING.md) for detailed contribution guidelines.

### What's the code style?

We follow PEP 8 and use Ruff for linting and formatting. See [CONTRIBUTING.md](../CONTRIBUTING.md#style-guidelines) for details.

### Do I need to write tests?

Yes, all new features should include tests. Aim for good test coverage.

## Licensing

### What license does this project use?

BaseTemplate is licensed under the Apache License 2.0. See [LICENSE](../LICENSE) for details.

### Can I use this in a commercial project?

Yes, the Apache 2.0 license permits commercial use.

## Support

### Where can I report bugs?

Please open an issue on [GitHub](https://github.com/AI-ModCon/BaseTemplate/issues).

### How do I suggest new features?

Open a feature request on [GitHub](https://github.com/AI-ModCon/BaseTemplate/issues/new?template=feature_request.md).

### Who should I contact with questions?

You can:
- Open a [GitHub Discussion](https://github.com/AI-ModCon/BaseTemplate/discussions)
- Open an [Issue](https://github.com/AI-ModCon/BaseTemplate/issues)
- Contact the ModCon base team

## Troubleshooting

### Import errors when running code?

Make sure you've installed the dependencies:
```bash
uv sync
```

### Tests failing?

Ensure you have development dependencies installed:
```bash
uv sync --group dev --group test
```

### Still having issues?

Open an issue on [GitHub](https://github.com/AI-ModCon/BaseTemplate/issues) with:
- Your Python version
- Error messages
- Steps to reproduce the issue
