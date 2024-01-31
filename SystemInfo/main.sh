#!/bin/bash

# -*- Author: Ali -*-
# -*- Info:  System Information Script -*-

# Function to display system information
display_system_info() {
    echo "System Information:"
    echo "-------------------"
    echo "CPU Usage: $(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')%"
    echo "Memory Usage: $(free -m | awk 'NR==2{printf "%.2f%%", $3*100/$2}')"
    echo "Disk Usage: $(df -h / | awk 'NR==2{print $5}')"
    
    if command -v nvidia-smi &> /dev/null; then
        echo "GPU Information:"
        nvidia-smi --query-gpu=name,driver_version,memory.total --format=csv,noheader
    fi
    
    echo "Network Usage:"
    ifstat -T -i eth0 -n | awk '{print "   In: " $1 "   Out: " $2}'
    
    echo "-------------------"
}

display_system_info
