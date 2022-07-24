FROM centos:latest
LABEL AUTHOR="yogesh.rao.a1@gmail.com"
RUN yum install -y httpd \
 zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page281/traveler.zip var/www/html
WORKDIR var/www/html
RUN unzip traveler.zip
RUN cp -rvf markups-traveler/* .
RUN rm -rf __MACOSX markups-traveler traveler.zip
CMD ["/usr/sbin/httpd", "-D" "FOREGROUND"]
EXPOSE 80
