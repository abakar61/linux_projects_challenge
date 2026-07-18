#!/bin/bash

echo "====================================="
echo "     SERVER PERFORMANCE REPORT"
echo "====================================="

echo ""
echo "Operating System:"
grep PRETTY_NAME /etc/os-release

echo ""
echo "Server Uptime:"
uptime

echo ""
echo "CPU Usage:"
top -bn1 | grep "Cpu(s)"

echo ""
echo "Memory Usage:"
free -h

echo ""
echo "Disk Usage:"
df -h

echo ""
echo "Top 5 CPU Processes:"
ps aux --sort=-%cpu | head -6

echo ""
echo "Top 5 Memory Processes:"
ps aux --sort=-%mem | head -6































