#!/bin/sh

: "${MYLAR_APP_DIR:=/usr/local/mylar}"

ln -s /usr/local/bin/python3.9 /usr/local/bin/python

# Install mylar
pw useradd mylar -u 5479 -s /bin/csh -m
git clone https://github.com/mylar3/mylar3.git $MYLAR_APP_DIR
cd $MYLAR_APP_DIR || { echo "Clone Mylar failed."; exit 1; }

/usr/local/bin/python -m venv $MYLAR_APP_DIR
$MYLAR_APP_DIR/bin/python -m pip install --upgrade pip
$MYLAR_APP_DIR/bin/pip install user_agent2

mkdir /usr/ports
chown -R mylar:mylar $MYLAR_APP_DIR

sysrc -f /etc/rc.conf mylar_enable="YES"

service mylar start

{
    echo "✅ Mylar installation is complete!"
    echo "App dir: $MYLAR_APP_DIR"
} > /root/PLUGIN_INFO
