#!/bin/sh
docker pull blackikeeagle/php-debian:5.6

docker build --no-cache -t blackikeeagle/php-xhgui:5.6 .
