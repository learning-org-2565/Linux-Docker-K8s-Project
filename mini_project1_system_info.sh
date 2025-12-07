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
echo "===== DISK USAGE =====" >> ${REPORT_FILE}
df -h >> ${REPORT_FILE}
echo "" >> ${REPORT_FILE}

# Memory Usage
echo "===== MEMORY USAGE =====" >> ${REPORT_FILE}
free -h >> ${REPORT_FILE}
echo "" >> ${REPORT_FILE}

# Running Processes
echo "===== PROCESS COUNT =====" >> ${REPORT_FILE}
echo "Total processes: $(ps aux | wc -l)" >> ${REPORT_FILE}
echo "" >> ${REPORT_FILE}

# Network Info
echo "===== NETWORK INFO =====" >> ${REPORT_FILE}
echo "IP Address: $(hostname -I)" >> ${REPORT_FILE}
echo "" >> ${REPORT_FILE}

# Footer
echo "=====================================" >> ${REPORT_FILE}
echo "    END OF REPORT" >> ${REPORT_FILE}
echo "=====================================" >> ${REPORT_FILE}

# Display confirmation
echo "âœ… Report generated: ${REPORT_FILE}"
echo "í³„ View with: cat ${REPORT_FILE}"
