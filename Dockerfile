FROM ubuntu
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y  && apt-get install apache2 -y && apt-get clean
ADD index.html /var/www/html
EXPOSE 80
CMD ["/usr/sbin/apachectl","-DFOREGROUND"]
