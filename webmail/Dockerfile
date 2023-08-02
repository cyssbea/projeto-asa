FROM nginx:latest

RUN apt-get update
RUN apt-get upgrade -y

#RUN apt-get install apache2
#RUN wget http://repository.rainloop.net/v1/rainloop-latest.zip

#RUN unzip rainloop-latest.zip -d  /srv/www/rainloop/
#RUN sudo chmod -R 755 /srv/www/rainloop/
#RUN sudo chown -R http:http /srv/www/rainloop/

#COPY ./site/rainloop-ssl.conf     /etc/nginx/sites-available/
#COPY ./site/rainloop.lan     /etc/nginx/sites-available/ 
#COPY ./site/rainloop.conf    /etc/httpd/conf/sites-available/ 
#COPY ./html/*   /etc/rainloop/index.html

#RUN apt-get install -y openssh-server
#RUN mkdir /var/run/sshd/
#RUN mkdir /root/.ssh
#RUN perl -i -ple 's/^(permitrootlogin\s)(.*)/\1yes/i' /etc/ssh/sshd_config
#RUN echo root:root | chpasswd