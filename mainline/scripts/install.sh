#!/usr/bin/env sh

set -e

apk add --update git

mkdir -p /var/www/app
cd /var/www/app
git clone https://github.com/perftools/xhgui.git .

apk del git
