# Project Structure: Hybrid Logging with Fluent Bit

This repository is organized to support the deployment and operation of a Fluent Bit-based log forwarding setup in a hybrid cloud environment.

## Directory Overview

- `config/` – Contains Fluent Bit configuration files, including inputs, outputs, and service directives.
- `logs/` – Placeholder for any sample or test logs used in development or troubleshooting.
- `scripts/` – Contains utility scripts for managing Fluent Bit and related tasks.
- `docs/` – Supplementary documentation, lab instructions, or architectural notes.
- `README.md` – Overview of the project, high-level setup steps, and objectives.
- `fluentbit-setup.md` – Detailed installation and configuration guide for Fluent Bit on a Linux EC2 instance.

## Recommended Enhancements

- Add configuration for other input sources (e.g., Kubernetes, Docker, syslog).
- Add CI/CD deployment automation.
- Integrate with alerting/monitoring (e.g., CloudWatch Alarms, Prometheus).

This layout helps enforce separation of concerns and makes the repo easier to navigate and maintain.
