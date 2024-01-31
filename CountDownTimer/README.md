# Shell Script - Countdown Timer

This is a simple shell script that implements a countdown timer. The script takes a duration in seconds as an argument and displays a countdown on the command line.

## Prerequisites

- Bash shell

## Usage

To use the countdown script, run the following command:

```bash
$ ./main.sh duration_in_seconds
```

Replace `duration_in_seconds` with the desired duration in seconds.

## Example

```
$ ./countdown.sh 10
Remaining time: 10 seconds
Remaining time: 9 seconds
Remaining time: 8 seconds
Remaining time: 7 seconds
Remaining time: 6 seconds
Remaining time: 5 seconds
Remaining time: 4 seconds
Remaining time: 3 seconds
Remaining time: 2 seconds
Remaining time: 1 second
Time's up!
```

## How It Works

The script defines a function `countdown()` which takes the remaining duration as an argument. It uses a loop to display the remaining time on the command line, updating every second, until the remaining time reaches 0. The function is then called with the provided duration.

If no duration is provided, an error message is displayed with the correct usage.

## Author

- Ali (Real0x0a1)

---
