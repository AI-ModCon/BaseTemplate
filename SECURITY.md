# Security Policy

## Reporting a Vulnerability

**Please do not report security vulnerabilities through public GitHub issues.**

Use GitHub private vulnerability reporting if enabled (Security -> Report a
vulnerability). Otherwise, email your findings to modcon-base-code@lbl.gov.

Please include the following details in your report:
- Description of the vulnerability
- Steps to reproduce
- Potential impact
- Suggested fix (if available)
- Affected source revision or artifact version and relevant runtime configuration

Share only sanitized, minimal evidence. Do not send live credentials, restricted
datasets, personal information, or sensitive prompts. For incidents on shared systems,
also follow the institution or HPC site's incident-response process.

We will acknowledge receipt of your report within 48 hours and provide updates on progress towards a fix.

## Supported Versions

| Version | Supported          |
| ------- | ------------------ |
| 1.x     | :white_check_mark: |
| < 1.0   | :x:                |

These contacts, response commitments, and supported versions describe BaseTemplate.
Adopting projects must replace them with a monitored reporting route and an accurate
support policy; unreleased projects should state which development revision receives fixes.

## Security Updates

We will release security updates as soon as possible after a vulnerability is confirmed. Affected users will be notified via GitHub security advisories.

## Operational Guidance

Apply the following controls where relevant and document project-specific boundaries.
This template does not qualify a deployment or replace institutional security policy.

### Credentials and Sensitive Outputs

This section provides shared guidance for authors and reviewers, not mandatory
policy text to copy into every repository. Assess actual artifacts and handling
practices; absence of equivalent wording is not itself a compliance failure.
Repositories may link here and add project-specific instructions where useful,
especially when collecting logs, traces, datasets, or user submissions.

- Never commit credentials or restricted data, including in notebooks, generated job
  scripts, model cards, screenshots, traces, or logs. Review artifacts before uploading.
- Before committing or sharing code, configuration, logs, notebooks, screenshots,
  traces, or generated artifacts, remove tokens, API keys, passwords, private keys,
  local account names, identifying filesystem paths, and unnecessary personal
  identifiers. Use placeholders such as `<USER>`, `<PROJECT>`, and `/path/to/data`.
  Intentional public attribution, such as approved author names and maintainer
  contacts, is permitted.
- Use scoped, short-lived credentials and approved secret storage. Ignore local secret
  files and commit sanitized examples instead; ignore patterns are not access controls.
- Avoid tokens in command arguments, scheduler-exported environments, and generated
  batch scripts. For file-based credentials, restrict permissions and follow site policy.
- If a credential is exposed, revoke/rotate it immediately and notify the responsible
  operator privately. Removing the latest copy does not remove Git history or other
  copies. Coordinate history cleanup after containment.
- Before making a repository or update public, review the full Git history and all
  branches and tags that will be published for credentials and other sensitive
  information. Use automated scanning where available and review its findings; a clean
  scan does not prove that no sensitive information is present. If a credential is
  found, revoke or rotate it immediately, then remove it from the history and verify
  the cleanup with another scan before release. If it may already have been exposed,
  follow the applicable incident-response process.

### Agents, Models, and External Code

- State which data goes to external model providers, telemetry, or trace stores, who
  can access it, and how long it is retained. Make optional reporting explicit.
- Document tool authority and require approval for destructive, publishing, or costly
  operations. Bound time, resource use, and job/API budgets.
- Treat retrieved documents, skill instructions, participant submissions, model
  checkpoints, and dataset/configuration files as untrusted. Do not grant them authority
  to override access policy or approve their own execution.
- Enforce least privilege and runtime isolation when executing untrusted code; prompts
  and agent instructions are not a sandbox. Keep credentials and sensitive mounts out
  of submission/evaluation environments and restrict network access where appropriate.
- Pin external code, images, and model assets to reviewed versions or immutable
  identifiers; verify hashes and provenance where available. Loading pickle-backed
  checkpoints or enabling remote model code can execute code and requires explicit trust.

### Services and HPC

- Declare whether deployment is localhost-only, trusted allocation-internal, or
  externally accessible. Bind local demos to loopback; require appropriate
  authentication, authorization, and TLS before widening access.
- Document persistent state, log redaction/retention, readiness, shutdown, and scoped
  cleanup. Do not claim production or hardware support from portable CI alone.
- Preserve qualified site runtimes; do not silently replace accelerator/system stacks.
  Run untrusted PR checks without deployment credentials or access to privileged runners.

See [administrator setup](./docs/getting_started.md#administrator-setup) for GitHub
controls that must be enabled outside the repository.
