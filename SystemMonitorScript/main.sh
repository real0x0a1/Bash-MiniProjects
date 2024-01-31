#!/bin/bash

# -*- Author: Ali -*-
# -*- Info:  System Monitor Script,
#       This script displays system information including CPU usage, memory usage, GPU information (if available) -*-

# Function to display system information
display_system_info() {
    clear
    echo "System Monitor - Press Ctrl+C to exit"
    echo "--------------------------------------"
    
    while true; do
        echo "CPU Usage: $(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')%"
        echo "Memory Usage: $(free -m | awk 'NR==2{printf "%.2f%%", $3*100/$2}')"
        
        if command -v nvidia-smi &> /dev/null; then
            echo "GPU Information:"
            nvidia-smi --query-gpu=name,driver_version,memory.total --format=csv,noheader
        fi
        
        echo "Network Usage:"
        ifstat -T -i eth0 -n 1 1 | tail -n 1 | awk '{print "   In: " $1 "   Out: " $2}'
        
        sleep 2  # Refresh interval in seconds
        clear
        echo "System Monitor - Press Ctrl+C to exit"
        echo "--------------------------------------"
    done
}

display_system_info
