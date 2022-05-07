FROM httpd
RUN yum install -y httpd \
 zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page278/faster.zip /var/www/html
WORKDIR /var/www/html
RUN unzip faster.zip
RUN cp -rvf logistics-company-website-template/* .
RUN rm -rf logistics-company-website-template faster.zip
CMD ["/usr/sbin/httpd", "D", "FOREGROUND"]
EXPOSE 80
