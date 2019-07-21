#!/usr/bin/env sh

set -e

apk add --update git

mkdir -p /phpapp
cd /phpapp
git clone https://github.com/perftools/xhgui.git .

apk del git
