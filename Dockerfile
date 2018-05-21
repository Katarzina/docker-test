FROM ubuntu:14.04
MAINTAINER Kateryna Parfenova <kppp35@gmail.com>

RUN apt-get update && apt-get install -y nginx

ADD nginx/nginx.conf /etc/nginx/

COPY nginx/localhost.crt /etc/nginx
COPY nginx/localhost.key /etc/nginx

RUN mkdir -p /var/www/katka
COPY www/index.html /var/www/katka

RUN rm /etc/nginx/sites-enabled/default

RUN usermod -u 1000 www-data 

CMD ["nginx"]

EXPOSE 8080 4443
