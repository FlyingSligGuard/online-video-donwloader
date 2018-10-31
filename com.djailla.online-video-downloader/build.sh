#!/bin/bash

install -m 755 /home/source/rc.local /etc

apt-get update
apt-get install -y -q locales

pip install humanize -i https://pypi.python.org/simple
pip install bottle==0.12.9 -i https://pypi.python.org/simple
pip install youtube-dl==2016.12.01 -i https://pypi.python.org/simple
ln -s /usr/local/bin/youtube-dl /usr/bin/

mkdir -m 755 -p /opt/youtube
cp -r /home/source/app/* /opt/youtube

exit 0
