# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- Initial repository setup with best practices template
- Spelling and local-link checks in the existing CI workflow, plus optional,
  manual-only external URL checks whose results are advisory and non-blocking.

### Changed
- Separate the shared repository baseline from Python starter defaults, with
  conditional requirements for skills, specifications, services, scientific workflows,
  and content.
- Document non-destructive adoption, administrator setup, and support/reproducibility limits.
- Clarify that sensitive-information checks assess public artifacts, not the presence
  of duplicated sanitization policies; repository-specific reminders are optional.

### Deprecated

### Removed

### Fixed

### Security
- Harden CI with immutable action pins, read-only permissions, locked dependency
  consumption, and opt-in external coverage reporting.
- Make publishing explicitly opt-in with a separate OIDC publishing job and document
  required release/environment protections.
- Add operational trust-boundary, credential-handling, and sanitized-reporting guidance.

## [1.0.0] - 2026-05-19

### Added
- Initial release of BaseTemplate
- Apache 2.0 License
- Contributing guidelines
- Code of conduct
- Issue and pull request templates
- GitHub Actions CI/CD configuration
- Project documentation structure
