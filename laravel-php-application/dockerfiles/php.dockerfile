FROM php:8.1-fpm-alpine

#Set working directory as website home directory
WORKDIR /var/www/html

# We make sure snapshot copy of src directory will be available in image
# dot represent current working directory /var/www/html
COPY src .

#install the php extension for our laravel application
RUN docker-php-ext-install pdo pdo_mysql

#Grand permssion to sepcial user www-data to read and write on working directory
## Run the chown command to change ownership of a directory
RUN chown -R www-data:www-data /var/www/html