  
FROM ubuntu:latest

RUN apt update

RUN apt upgrade -y

RUN apt install postfix dovecot-imapd dovecot-pop3d telnet -y

RUN apt install syslog -y

COPY main.cf /etc/postfix 

COPY startemail.sh /etc/init.d 