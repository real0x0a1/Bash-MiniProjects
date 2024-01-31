# JP2A Image to ASCII Art Converter

This simple bash script converts an image file into ASCII art using the jp2a command-line tool.

## Prerequisites

- jp2a should be installed on your system. If it is not installed, please install it before running the script.

## Install

Debian/Ubuntu:

```bash
sudo apt-get update
sudo apt-get install jp2a
```

Fedora:

```bash
sudo dnf install jp2a
```

CentOS:

```bash
sudo yum install jp2a
```

MacOS:

```bash
brew install jp2a
```

## Usage

```bash
$ ./main.sh <image_path> <width> <height>
```

- `image_path` - Path to the image file you want to convert.
- `width` - Desired width of the ASCII art (in characters).
- `height` - Desired height of the ASCII art (in characters).

## Example

```bash
$ ./main.sh my_image.jpg 80 40
```

This will convert the `my_image.jpg` to ASCII art with a width of 80 characters and a height of 40 characters.

Please note that the aspect ratio may not be preserved if the width and height do not match the original image's proportions.

## Author

- Ali (Real0x0a1)

---
