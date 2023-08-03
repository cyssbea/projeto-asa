
FROM ubuntu:latest

RUN apt update -y

RUN apt upgrade -y

RUN apt install postfix dovecot-imapd dovecot-pop3d telnet -y

RUN apt install syslog-ng -y

COPY ./postfix/etc/main.cf /etc/postfix

COPY ./postfix/etc/master.cf /etc/postfix # <-- Ver se a estrutura de diretorios está correta

COPY ./dovecot/conf.d/* /etc/dovecot/conf.d


COPY mailname /etc # <-- Nesse arquivo so tem uma linha indicando o dominio. Ex.: asa.br

COPY ./postfix/main.cf /etc/postfix

#RUN apt install apache2 apache2-utils mariadb-server mariadb-client curl 
#RUN libapache2-mod-php php php-mysql php-cli php-pear php-gmp php-gd php-bcmath
#RUN php-mbstring php-curl php-xml php-zip php-imap php-intl php-ldap php-imagick wget

COPY startemail.sh /etc/init.d 

RUN chmod 755 /etc/init.d/startemail.sh


#EXPOSE PORTS
EXPOSE 25/tcp
EXPOSE 587/tcp
EXPOSE 110/tcp
EXPOSE 143/tcp

#CMD ["/etc/init.d/startemail.sh"]
#Start the Postfix Service
#CMD ["/usr/sbin/postfix", "start-fg"]
CMD ["sh", "-c", "service syslog-ng start ; service postfix start ; service dovecot start ; tail -F /var/log/mail.log"]