# AES Encryption/Decryption Script (README)

This script allows you to encrypt and decrypt text or text files using the AES-256-CBC algorithm. The AES algorithm is a symmetric encryption algorithm that is widely used for secure data transmission.

## Prerequisites

- OpenSSL: Please ensure that OpenSSL is installed on your system before running this script. You can check if OpenSSL is installed by running the following command in the terminal:

  ```bash
  openssl version
  ```

  If OpenSSL is not installed, please install it before running this script.

## Usage

To use this script, follow the steps below:

1. Open a terminal.
2. Navigate to the directory where the script is located.
3. Run the script using the following command:

   ```bash
   #!/bin/bash ./main.sh
   ```

4. The script will display a menu with the following options:

   ```plaintext
   Text Encryption/Decryption Script
   ---------------------------------
   1. Encrypt Text
   2. Encrypt Text File
   3. Decrypt Text
   4. Decrypt Text File
   Enter your choice:
   ```

5. Enter the number corresponding to the desired operation and press Enter.

### Encrypt Text

This option allows you to encrypt a text string.

1. Select option 1 from the menu.
2. Enter the text to encrypt when prompted and press Enter.
3. Enter the encryption passphrase when prompted and press Enter.
4. The encrypted text will be displayed.

### Encrypt Text File

This option allows you to encrypt the contents of a text file.

1. Select option 2 from the menu.
2. Enter the path to the text file to encrypt when prompted and press Enter.
3. Enter the encryption passphrase when prompted and press Enter.
4. The encrypted text will be displayed.

### Decrypt Text

This option allows you to decrypt an encrypted text string.

1. Select option 3 from the menu.
2. Enter the encrypted text when prompted and press Enter.
3. Enter the decryption passphrase when prompted and press Enter.
4. The decrypted text will be displayed if the decryption is successful. Otherwise, an error message will be shown.

### Decrypt Text File

This option allows you to decrypt the contents of an encrypted text file.

1. Select option 4 from the menu.
2. Enter the path to the encrypted text file to decrypt when prompted and press Enter.
3. Enter the decryption passphrase when prompted and press Enter.
4. The decrypted text will be displayed if the decryption is successful. Otherwise, an error message will be shown.

## Notes

- The script uses the AES-256-CBC algorithm with salt to provide stronger encryption.
- The passphrases used for encryption and decryption are not stored or saved.
- For security reasons, the decrypted text is not stored or saved in a file.
- If there are any errors during encryption or decryption, error messages will be displayed.
- The script is written in Bash and uses the OpenSSL command-line tool for encryption and decryption.

## Disclaimer

This script is provided for educational and informational purposes only. The authors do not guarantee the security of the encryption or decryption process or the integrity of the decrypted text. Use this script at your own risk.

## Author

- Ali (Real0x0a1)

---
