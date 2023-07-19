  
FROM ubuntu:latest

RUN apt update

RUN apt upgrade -y

RUN apt install postfix dovecot-imapd dovecot-pop3d telnet -y

RUN apt install syslog -y

#EXPOSE PORTS
EXPOSE 25/tcp
EXPOSE 587/tcp
EXPOSE 110/tcp
EXPOSE 143/tcp