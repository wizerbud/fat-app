FROM php:apache
LABEL mantainer="Sergo Gabrielyan <sergo.gabrielyan@gmail.com>"
LABEL description="This example Dockerfile install Apache & PHP"

COPY app /var/www/html/

RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf && \
    a2enmod rewrite && \
    chown -R www-data:www-data /var/www && \
    chmod -R 755 /var/www/html && \
    docker-php-ext-install pdo_mysql

EXPOSE 80