#!/bin/sh

: "${MYLAR_APP_DIR:=/usr/local/mylar}"

python -m pip install --upgrade pip
pip install user_agent2

# Install mylar
pw useradd mylar -u 5479 -s /bin/csh -m
git clone https://github.com/mylar3/mylar3.git $MYLAR_APP_DIR
cd $MYLAR_APP_DIR || { echo "Clone Mylar failed."; exit 1; }
chown -R mylar $MYLAR_APP_DIR

sysrc -f /etc/rc.conf mylar_enable="YES"

service mylar start

{
    echo "✅ Mylar installation is complete!"
    echo "App dir: $MYLAR_APP_DIR"
} > /root/PLUGIN_INFO
