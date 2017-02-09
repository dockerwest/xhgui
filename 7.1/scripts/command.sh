#!/bin/sh

/prepare.sh

gosu www-data rsync -a --info=progress2 /var/lib/xhgui/ /var/www/app/

if [ "php-fpm7.1" != "$1" ] && [ "/bin/bash" != "$1" ]; then
    exec gosu www-data "$@"
else
    exec "$@"
fi
