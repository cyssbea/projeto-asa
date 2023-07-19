#!/bin/bash

service dovecot start
/usr/sbin/postfix start-fg

adduser -c "User Cyntia" cyntia