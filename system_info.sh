#!/bin/bash

# Author : Arun Ponugoti
# Date: today 2025-12-07

# Description: This script collects and displays system information including
# CPU details, memory usage, disk usage, and network configuration.
# It is intended for use in Linux environments.
# Usage: ./system_info.sh

REPORT_FILE="system_info_report_$(date +%Y%m%d_%H%M%S).txt"

echo "================================" > ${REPORT_FILE}
echo "     system info report    " >> ${REPORT_FILE}
echo "================================" >> ${REPORT_FILE}
echo "" > ${REPORT_FILE}