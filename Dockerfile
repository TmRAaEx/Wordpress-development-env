FROM php:8.2-apache

# Installera PHP extensions
RUN docker-php-ext-install mysqli pdo_mysql \
    && apt-get update \
    && apt-get install -y libicu-dev \
    && docker-php-ext-configure intl \
    && docker-php-ext-install intl

# Aktivera mod_rewrite
RUN a2enmod rewrite

# Kopiera WordPress core + wp-content temporärt (volymen kommer skriva över wp-content)
COPY ./html /var/www/html

# Rättigheter
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

EXPOSE 80
