# System Monitor

## Description

This Bash script is designed to monitor the system resources and display real-time information about the CPU usage, memory usage, GPU information (if available), and network usage. It continuously refreshes the information and provides a visually appealing interface.

## Prerequisites

- This script requires the following dependencies to be installed:
  - ifstat
  - nvidia-smi (if you want to display GPU information)

## Usage

1. Make sure the script file has executable permissions. If not, run the following command: `chmod +x main.sh`.
2. Run the script by executing the following command: `./main.sh`.
3. The system monitor interface will be displayed, showing the CPU usage, memory usage, GPU information (if available), and network usage.
4. To exit the script, press Ctrl+C.

## Features

- CPU Usage: Displays the current CPU usage in percentage.
- Memory Usage: Displays the current memory usage in percentage.
- GPU Information: If the script detects the presence of nvidia-smi, it will display the GPU name, driver version, and total memory.
- Network Usage: Displays the current network usage (incoming and outgoing) for the eth0 interface.

## Notes

- The script requires root privileges to access certain system information.
- Adjust the refresh interval according to your preference by modifying the value of the `sleep` command in the code.

## Author

- Ali (Real0x0a1)

---
