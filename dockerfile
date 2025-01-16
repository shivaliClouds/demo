FROM ubuntu
RUN apt update -y


RUN apt install apache2 php php-mysql php-common wget mysql-server tar -y
RUN apt autoremove -y && apt autoclean -y
WORKDIR /var/www/html
RUN wget "https://wordpress.org/latest.tar.gz" && tar -xvf latest.tar.gz  && rm -fr latest.tar.gz && cp -R wordpress/* /var/www/html && chown www-data:www-data * && mv index.html apache.conf


CMD ["apachectl" , "-D", "FOREGROUND"]


