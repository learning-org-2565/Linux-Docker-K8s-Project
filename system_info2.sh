#!/bin/bash
# System Information Script
# Author: Arun Ponugoti
# Purpose: Generate system health report
# Date: 2025-12-07

# Set output file
REPORT_FILE="system_report_$(date +%Y%m%d_%H%M%S).txt"

# Header
echo "=====================================" > ${REPORT_FILE}
echo "    SYSTEM INFORMATION REPORT" >> ${REPORT_FILE}
echo "=====================================" >> ${REPORT_FILE}
echo "" >> ${REPORT_FILE}

# System Details
echo "Generated on: $(date)" >> ${REPORT_FILE}
echo "Hostname: $(hostname)" >> ${REPORT_FILE}
echo "Current User: $(whoami)" >> ${REPORT_FILE}
echo "Uptime: $(uptime -p)" >> ${REPORT_FILE}
echo "" >> ${REPORT_FILE}

# Disk Usage
echo "=======Disk usage========" >> ${REPORT_FILE}
df -h >> ${REPORT_FILE}
echo  ${REPORT_FILE}

echo cat ${REPORT_FILE}
