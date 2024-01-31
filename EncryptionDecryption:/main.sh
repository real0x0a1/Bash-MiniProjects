#!/bin/bash

# -*- Author: Ali -*-
# -*- Info:  This script provides a simple text encryption and decryption utility using the AES algorithm. 
#             It allows users to encrypt and decrypt both plain text and text files securely. -*-

# Encrypt text using AES algorithm
encrypt_text() {
    echo -n "Enter the text to encrypt: "
    read -s plaintext
    echo

    echo -n "Enter the encryption passphrase: "
    read -s passphrase
    echo

    encrypted_text=$(echo "$plaintext" | openssl enc -aes-256-cbc -a -salt -pass pass:"$passphrase")
    echo "Encrypted Text:"
    echo "$encrypted_text"
}

# Encrypt a text file using AES algorithm
encrypt_file() {
    echo -n "Enter the path to the text file to encrypt: "
    read input_file

    echo -n "Enter the encryption passphrase: "
    read -s passphrase
    echo

    encrypted_text=$(openssl enc -aes-256-cbc -a -salt -pass pass:"$passphrase" -in "$input_file")
    echo "Encrypted Text:"
    echo "$encrypted_text"
}

# Decrypt text using AES algorithm
decrypt_text() {
    echo -n "Enter the encrypted text: "
    read -s encrypted_text
    echo

    echo -n "Enter the decryption passphrase: "
    read -s passphrase
    echo

    decrypted_text=$(echo "$encrypted_text" | openssl enc -d -aes-256-cbc -a -salt -pass pass:"$passphrase" 2>/dev/null)
    if [ $? -eq 0 ]; then
        echo "Decrypted Text:"
        echo "$decrypted_text"
    else
        echo "Decryption failed."
    fi
}

# Decrypt a text file using AES algorithm
decrypt_file() {
    echo -n "Enter the path to the encrypted text file to decrypt: "
    read input_file

    echo -n "Enter the decryption passphrase: "
    read -s passphrase
    echo

    decrypted_text=$(openssl enc -d -aes-256-cbc -a -salt -pass pass:"$passphrase" -in "$input_file" 2>/dev/null)
    if [ $? -eq 0 ]; then
        echo "Decrypted Text:"
        echo "$decrypted_text"
    else
        echo "Decryption failed."
    fi
}

echo "Text Encryption/Decryption Script"
echo "---------------------------------"
echo "1. Encrypt Text"
echo "2. Encrypt Text File"
echo "3. Decrypt Text"
echo "4. Decrypt Text File"
echo "Enter your choice: "
read choice

case $choice in
    1)
        encrypt_text
        ;;
    2)
        encrypt_file
        ;;
    3)
        decrypt_text
        ;;
    4)
        decrypt_file
        ;;
    *)
        echo "Invalid choice."
        ;;
esac
