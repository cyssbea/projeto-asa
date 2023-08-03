FROM alpine:latest

RUN apk add --update --no-cache \
    curl \
    fcgi \
    lighttpd \
    php \
    php-cgi \
    php-common \
    php-ctype \
    php-curl \
    php-dom \
    php-gd \
    php-gettext \
    php-iconv \
    php-imap \
    php-json \
    php-ldap \
    php-openssl \
    php-pdo \
    php-pdo_pgsql \
    php-pgsql \
    php-posix \
    php-soap \
    php-xml \
    php-xmlrpc \
 && rm -rf /var/cache/apk/*

COPY lighttpd.conf /etc/lighttpd/lighttpd.conf

RUN adduser www-data -G www-data -H -s /bin/false -D


RUN mkdir -p /run/lighttpd/ \
 && chown www-data. /run/lighttpd/

RUN cd /var/www/ && \
    curl -sL http://repository.rainloop.net/installer.php | php && \
    find . -type d -exec chmod 755 {} \; && \
    find . -type f -exec chmod 644 {} \; && \
    chown -R www-data:www-data .

VOLUME /var/www/data

EXPOSE 80

ENTRYPOINT ["/usr/sbin/lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]

CMD php-fpm -D