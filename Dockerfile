#---------------------------------------------------------------------------
# Dockefile to build Docker Image with Apache WebServer running on Ubuntu
# Copyleft (c) by Pro Art
#---------------------------------------------------------------------------

FROM ubuntu:21.04

RUN apt-get -y update && apt-get -y install apache2

RUN echo 'Docker Image on CloudRun of Artsiom Prokopenko!<br>'   > /var/www/html/index.html
RUN echo '<b><font color="magenta">Version 1.2</font></b>' >> /var/www/html/index.html

CMD ["/usr/sbin/apache2ctl", "-D","FOREGROUND"]
EXPOSE 80
