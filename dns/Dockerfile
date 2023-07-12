
FROM ubuntu/bind9

RUN apt update

RUN apt upgrade -y

RUN apt install bind9 bind9-utils dnsutils nano -y

COPY ./etc/* /etc/bind

#EXPOSE PORTS
EXPOSE 53/tcp
EXPOSE 53/udp
EXPOSE 953/tcp

#Start the Name Service
CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf","-u","bind"]