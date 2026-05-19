# Contributing to BaseTemplate

Thank you for your interest in contributing to BaseTemplate! This document provides guidelines and instructions for contributing to this project.

## Code of Conduct

This project and everyone participating in it is governed by our [Code of Conduct](./CODE_OF_CONDUCT.md). By participating, you are expected to uphold this code.

## How to Contribute

### Reporting Bugs

Before creating bug reports, please check the issue list as you might find out that you don't need to create one. When you are creating a bug report, please include as many details as possible:

- **Use a clear and descriptive title**
- **Describe the exact steps which reproduce the problem**
- **Provide specific examples to demonstrate the steps**
- **Describe the behavior you observed after following the steps**
- **Explain which behavior you expected to see instead and why**
- **Include screenshots and animated GIFs if possible**
- **Include your environment details** (OS, Python version, etc.)

### Suggesting Enhancements

Enhancement suggestions are tracked as GitHub issues. When creating an enhancement suggestion, please include:

- **Use a clear and descriptive title**
- **Provide a step-by-step description of the suggested enhancement**
- **Provide specific examples to demonstrate the steps**
- **Describe the current behavior and the proposed behavior**
- **Explain why this enhancement would be useful**

### Pull Requests

- Follow the Python code style guidelines (see below)
- Document new code based on the Documentation Styleguide
- End all files with a newline
- Avoid platform-dependent code
- Add tests for any new functionality
- Include appropriate commit messages

## Development Setup

1. Fork the repository
2. Clone your fork: `git clone https://github.com/your-username/basetemplate.git`
3. Create a new branch: `git checkout -b feature/my-feature`
4. Set up development environment:
   ```bash
   python -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   pip install -r requirements.txt
   pip install -r requirements-dev.txt
   ```
5. Make your changes
6. Run tests: `pytest`
7. Run linting: `black . && flake8 .`
8. Commit your changes: `git commit -am "Add my feature"`
9. Push to the branch: `git push origin feature/my-feature`
10. Submit a pull request

## Style Guidelines

### Python Code Style

- Use [PEP 8](https://www.python.org/dev/peps/pep-0008/) as the coding standard
- Use [Black](https://github.com/psf/black) for code formatting
- Use [Flake8](https://flake8.pycqa.org/) for linting
- Use type hints where appropriate

### Commit Messages

- Use the present tense ("Add feature" not "Added feature")
- Use the imperative mood ("Move cursor to..." not "Moves cursor to...")
- Limit the first line to 72 characters or less
- Reference issues and pull requests liberally after the first line

### Documentation

- Use Markdown for documentation
- Keep documentation up-to-date with code changes
- Write clear, concise documentation
- Include code examples where appropriate

## Testing

- Write tests for all new features
- Ensure all tests pass before submitting a pull request
- Aim for high test coverage
- Use descriptive test names

## Questions?

Feel free to open an issue with the label `question` if you have any questions.

Thank you for contributing!
