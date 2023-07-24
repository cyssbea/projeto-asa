FROM php:5.6-apache

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y vim \
aptitude squirrelmail-locales squirrelmail apache2 htop w3m

#ssh
RUN apt-get install -y openssh-server
RUN mkdir /var/run/sshd/
RUN mkdir /root/.ssh
RUN perl -i -ple 's/^(permitrootlogin\s)(.*)/\1yes/i' /etc/ssh/sshd_config
RUN echo root:root | chpasswd

# squirrelmail
RUN ln -s /etc/squirrelmail/apache.conf /etc/apache2/conf.d/squirrelmail.conf
COPY ./squirrelmail/config.php /etc/squirrelmail/config.php