#!/bin/bash

URL="https://discord.com/api/download/stable?platform=linux&format=deb"

FILE="discord.deb"

echo "Downloading Discord..."
wget -O "$FILE" "$URL"

if [ $? -eq 0 ]; then
    echo "Download completed. Installing..."
    sudo dpkg -i "$FILE"
    
    sudo apt-get install -f -y
    
    echo "Installation completed! Removing installation file..."
    rm -f "$FILE"
    
    echo "File successfully removed!"
else
    echo "Error downloading Discord."
    exit 1
fi
