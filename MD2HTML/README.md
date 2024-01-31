## README

This script is used to convert Markdown files to HTML using pandoc. It checks if pandoc is installed, prompts the user to enter the path to the input Markdown file, and converts the file to HTML with added CSS.

### Prerequisites

Before using this script, ensure that pandoc is installed on your system. If pandoc is not installed, please install it first.

## Install

Debian/Ubuntu:

```bash
sudo apt-get update
sudo apt-get install pandoc
```

Fedora:

```bash
sudo dnf install pandoc
```

CentOS:

```bash
sudo yum install pandoc
```

MacOS:

```bash
brew install pandoc
```

Windows:
https://pandoc.org/installing.html#windows.

### Usage

1. Run the script using the command `#!/bin/bash`.
2. When prompted, enter the path to the input Markdown file. Make sure to provide the correct path, including the file extension.
3. The script will check if the input file exists. If the file does not exist, an error message will be displayed and the script will exit.
4. The script will convert the Markdown file to HTML using pandoc. The output file will have the same name as the input file, but with the `.html` extension.
5. The script will also apply CSS formatting to the HTML file using the `styles.css` file. Make sure to provide the correct path to your CSS file in the script.
6. If the conversion is successful, the script will display a success message and the path to the generated HTML file.
7. If the conversion fails, an error message will be displayed.

### Example

```bash
$ ./main.sh
Enter the path to the input Markdown file: input.md
Conversion successful. HTML file: input.html
```

Please note: The CSS file used for formatting is not provided in this script. Make sure to provide your own `styles.css` file with the desired CSS rules for formatting the HTML output.

## Author

- Ali (Real0x0a1)

---
