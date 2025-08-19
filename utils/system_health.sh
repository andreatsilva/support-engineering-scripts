#!/bin/bash
# Usage: bash system_health.sh

echo "===== System Health Report ====="
echo "Disk Usage:"
df -h | grep -v tmpfs
echo ""

echo "Memory Usage:"
free -h
echo ""

echo "CPU Load:"
uptime
