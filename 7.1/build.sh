#!/bin/sh
docker pull blackikeeagle/php-debian:7.1

docker build --no-cache -t blackikeeagle/php-xhgui:7.1 .
