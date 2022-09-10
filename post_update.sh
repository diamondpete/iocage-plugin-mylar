#!/bin/sh

: "${MYLAR_APP_DIR:=/usr/local/mylar}"

# Update mylar
cd $MYLAR_APP_DIR || { echo "Mylar app dir not found."; exit 1; }
git pull

service mylar start

{
    echo "✅ Mylar update is complete!"
    echo "App dir: $MYLAR_APP_DIR"
} > /root/PLUGIN_INFO
