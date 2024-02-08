FROM nginx:stable-alpine

#set working directory as path of the default nginx configuration location
WORKDIR /etc/nginx/conf.d

# Snapshot copy our local nginx/nginx.conf file into this working directory inside image
COPY nginx/nginx.conf .

#Renamed copied nginx/nginx.conf inside working directory to default.conf because nginx read settings
#from this file only.
RUN mv nginx.conf default.conf

#switch and set working directory to /var/www/html directory inside image
WORKDIR /var/www/html

# Snapshot copy of our local src source code into the working directory inside image
COPY src .
