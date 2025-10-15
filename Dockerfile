# Usa la imagen oficial de PHP con Apache
FROM php:8.2-apache

# Copia tu proyecto al servidor web del contenedor
COPY . /var/www/html/

# Habilita módulos comunes (si tu SRFK++ usa base de datos)
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Ajusta permisos (opcional)
RUN chown -R www-data:www-data /var/www/html

# Expone el puerto 80 (Render lo usa por defecto)
EXPOSE 80
