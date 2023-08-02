#!/bin/bash

service dovecot start
service postfix start
/usr/sbin/postfix start-fg

adduser -c "User Cyntia" cyntia