# Shell Script System Information

This shell script provides system information including CPU Usage, Memory Usage, Disk Usage, GPU Information (if available), and Network Usage. It is written in bash scripting language.

## Usage

To run the script, open a terminal and navigate to the directory where the script is located. Then, execute the following command:

```bash
./main.sh
```

## System Information

The script displays the following system information:

- CPU Usage: Displays the current CPU usage in percentage.
- Memory Usage: Displays the current memory usage in percentage.
- Disk Usage: Displays the current disk usage for the root directory.
- GPU Information (if available): Displays the GPU name, driver version, and total memory.
- Network Usage: Displays the incoming and outgoing network traffic for the ethernet interface.

## Prerequisites

- The script requires `top`, `free`, `df`, `nvidia-smi`, and `ifstat` commands to be installed in the system. If any of these commands are not found, the script will fail to provide complete system information.

## Example Output

```
System Information:
-------------------
CPU Usage: 10%
Memory Usage: 50.00%
Disk Usage: 25%
GPU Information:
NVIDIA GeForce RTX 3080, 470.57.02, 10.74 GiB
Network Usage:
   In: 1.23 Mbit/s   Out: 0.75 Mbit/s
-------------------
```

## Author

- Ali (Real0x0a1)

---
