#!/bin/bash



service dovecot start
/usr/sbin/postfix start-fg

useradd -c 'User Bob' -m -s /bin/false bob