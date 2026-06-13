
FROM php:7.4-apache


RUN a2enmod rewrite


RUN docker-php-ext-install mysqli pdo pdo_mysql

WORKDIR /var/www/html

COPY ./src/ /var/www/html/

RUN rm -rf /var/www/html/index.html

# Setpermissions
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html


# Expose port 80
EXPOSE 80

# Start both Apache and Filebeat
CMD apache2-foreground
