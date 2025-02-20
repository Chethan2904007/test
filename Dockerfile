FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install git curl apache2 -y
WORKDIR /var/www/html
COPY index.html .
CMD ["apachectl", "-DFOREGROUND"]
EXPOSE 80

