FROM ubuntu
RUN apt update 

RUN apt install apache2 -y
RUN echo "this is new change" > /var/www/html/index.html
CMD ["apachectl" , "-D", "FOREGROUND"]


