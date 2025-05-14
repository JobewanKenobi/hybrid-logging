# Hybrid Logging Pipeline

This project demonstrates a hybrid AWS EC2 logging pipeline using Fluent Bit and AWS CloudWatch Logs.
It was deployed on a Linux EC2 instance acting as a VPN and Active Directory gateway.

## Overview

- Collects system logs from `/var/log/messages`
- Collects VPN logs from StrongSwan via systemd journal
- Streams logs into two CloudWatch log groups:
  - `strongswan-system-logs`
  - `strongswan-vpn-logs`
- IAM roles and policies were configured to provide secure access
- Runs as a `systemd` service

## Stack

- AWS EC2, IAM, CloudWatch Logs
- Fluent Bit 4.x
- StrongSwan VPN
- Amazon Linux 2

---
## Fluent Bit Setup

For detailed setup instructions, see [Fluent Bit Setup Documentation](./fluentbit-setup.md).

## Documentation

- [Fluent Bit Setup Guide](docs/fluentbit-setup.md)
