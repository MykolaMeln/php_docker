FROM php:7.3-apache

RUN apt-get update && apt-get install -y git
RUN docker-php-ext-install pdo pdo_mysql mysqli
RUN a2enmod rewrite

WORKDIR /var/www/html
COPY ./src ./

ENV MYSQL_PASSWORD=root
ENV MYSQL_USER=root
ENV MYSQL_HOST=container_mysql
ENV MYSQL_PORT=3306
ENV MYSQL_DATABASE=employers

CMD ["apachectl", "-D",  "FOREGROUND"]
EXPOSE 80
