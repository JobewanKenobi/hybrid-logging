# Fluent Bit to AWS CloudWatch Lab

## Overview

This project demonstrates how to configure Fluent Bit on a Linux EC2 instance to ship system and application logs to Amazon CloudWatch Logs. The lab covers setting up Fluent Bit inputs, outputs, IAM permissions, and log monitoring in AWS. It serves as an SRE readiness exercise by simulating production-level logging and observability practices.

## Architecture

* **EC2 Instance**: Linux-based (Amazon Linux 2)
* **Fluent Bit**: Lightweight log processor and forwarder
* **CloudWatch Logs**: Centralized log storage and analysis
* **IAM Role**: EC2SSMRole with CloudWatch permissions

## Goals

* Collect logs from `/var/log/messages`, `/var/log/secure`, and StrongSwan
* Parse logs using Fluent Bit
* Send logs to AWS CloudWatch under organized log groups and streams
* Validate with `tail`, `systemctl`, and AWS dashboard widgets

## Requirements

* AWS CLI configured
* EC2 instance with SSM and logging IAM role
* Fluent Bit installed at `/opt/fluent-bit`
* Working VPN configuration (StrongSwan)

## Setup Instructions

1. **Install Fluent Bit** using the official documentation
2. **Update `fluent-bit.conf`**:

   * Define `[SERVICE]`, `[INPUT]`, and `[OUTPUT]` sections
   * Use `tail` for file logs and `systemd` for journal logs
3. **Validate Permissions**:

   * IAM role should include `logs:PutLogEvents`, `logs:CreateLogGroup`, etc.
4. **Restart Service**:

   ```bash
   sudo systemctl daemon-reload
   sudo systemctl restart fluent-bit
   sudo systemctl status fluent-bit
   ```
5. **Verify Logs**:

   * Check `/var/log/messages` and `/var/log/secure`
   * Confirm logs appear in CloudWatch

## Extras

* Consider adding **alarms** and **filters** in CloudWatch
* Extend with **Terraform** for reproducibility
* Optional: Set up **dashboard widgets** for real-time monitoring

## License

MIT
