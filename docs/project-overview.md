# Project Overview

## Purpose

This project demonstrates a hybrid logging architecture using Fluent Bit to ship logs from a Linux-based EC2 instance to AWS CloudWatch Logs. It supports collecting logs from system files, systemd journal, and custom application logs such as StrongSwan VPN activity.

## Architecture

- **Fluent Bit** runs as a service on the EC2 instance.
- It collects logs from:
  - `/var/log/messages`
  - `/var/log/secure`
  - Systemd services: `strongswan`, `sshd`, and `sudo`
- Logs are shipped to multiple CloudWatch Log Groups based on their source.
- The EC2 instance uses an IAM role (`EC2SSMRole`) to authorize CloudWatch Logs access.

## Key Benefits

- Centralized logging
- Near real-time monitoring
- Fine-grained log separation
- Cloud-native observability without third-party tools

## Future Enhancements

- Add alerting via CloudWatch Alarms
- Integrate with AWS Lambda for log parsing
- Send logs to an ELK stack or S3 bucket for deeper analysis
