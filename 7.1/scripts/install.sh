#!/bin/sh

set -e

# install packages
apt-get update
apt-get install -y php7.1-xml php7.1-mcrypt php-mongodb rsync git

mkdir -p /var/lib/xhgui
chown www-data: /var/lib/xhgui
cd /var/lib/xhgui
gosu www-data git clone https://github.com/perftools/xhgui.git .
gosu www-data /usr/local/lib/composer install
sed -e 's/127\.0\.0\.1/mongo/g' -i config/config.default.php

apt-get purge -y --auto-remove git

apt-get clean -y

