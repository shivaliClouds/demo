FROM ubuntu
RUN apt update 

RUN apt install nginx -y
RUN echo "this is new change" > /var/www/html/index.html
CMD ["nginx", "-g", "daemon off;"]


