FROM centos
RUN yum update -y
RUN yum install -y httpd \
    zip \
    tree \
    unzip
 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page278/zezmon.zip  /var/www/html
WORKDIR /var/www/html
RUN unzip zezmon.zip
RUN cp -rvf site/* .
RUN rm -rf site zezmon.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
