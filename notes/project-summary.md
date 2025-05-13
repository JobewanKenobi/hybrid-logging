# Project Summary: Hybrid EC2 Logging Pipeline

## Overview
Designed and deployed a log aggregation pipeline using Fluent Bit on an AWS EC2 instance that serves as a hybrid VPN and AD gateway.

## Components
- Collects logs from `/var/log/messages` and StrongSwan systemd service
- Streams logs to AWS CloudWatch in two separate groups
- IAM role configured with least-privilege access to CloudWatch APIs
- Fluent Bit runs as a systemd service for persistence

## Key Tools
- Fluent Bit v4.0.1
- AWS EC2, CloudWatch Logs, IAM
- StrongSwan VPN, systemd/journald

## Value
- Enables full observability into hybrid infrastructure traffic and authentication events
- Provides centralized log retention and supports audit/compliance needs
