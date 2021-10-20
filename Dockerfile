FROM centos:latest
RUN yum install -y httpd zip unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page270/unika.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip unika.zip
RUN cp -rvf unika/* .
RUN rm -rf unika unika.zip 
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
