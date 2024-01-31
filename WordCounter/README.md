# Word and Character Counter

This is a simple bash script that counts the number of words and characters in a given text file.

## Usage

To run this script, you need to provide an input text file as a command line argument. Optionally, you can include the `-c` flag to display each word in the terminal.

```bash
$ ./WordCounter.sh [-c] input.txt
```

## Options

- `-c`: Display words in the terminal

## Examples

Count words and characters in `example.txt` file:

```bash
$ ./WordCounter.sh example.txt
```

Count words and characters in `example.txt` file and display each word:

```bash
$ ./WordCounter.sh -c example.txt
```

## Example output
```bash
❯ bash main.sh example.txt
Word count:        7
Character count:      269
```

## Notes

- The script checks if an input file is provided. If not, it displays the usage information and exits.
- If the input file does not exist, an error message is displayed and the script exits.
- The script uses the `wc` command to count the number of words and characters.
- If the `-c` flag is set, the script displays each word in the file, sorted and with the count using the `uniq` command.

**_Feel free to modify this script according to your needs._**

## Author

- Ali (Real0x0a1)

---
