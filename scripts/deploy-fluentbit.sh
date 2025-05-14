#!/bin/bash
# Deploy Fluent Bit config to target system

CONFIG_PATH="config/fluent-bit.conf"
TARGET_PATH="/etc/fluent-bit/fluent-bit.conf"

echo "Copying Fluent Bit config..."
sudo cp "$CONFIG_PATH" "$TARGET_PATH"

echo "Restarting Fluent Bit service..."
sudo systemctl restart fluent-bit

echo "Fluent Bit restarted with new config."
