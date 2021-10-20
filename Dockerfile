FROM centos:latest
RUN yum install -y httpd zip unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page270/unika.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip unika.zip
RUN cp unika-html/index.html .
RUN rm -rf unika-html unika.zip 
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
