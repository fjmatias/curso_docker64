FROM php:7.4-apache

RUN apt update && apt install -y git && apt install -y nano

WORKDIR /var/www/html

COPY ./index.html ./info.php /var/www/html/

RUN chown -R www-data:www-data /var/www/html

