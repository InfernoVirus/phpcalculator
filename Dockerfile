FROM centos:7
RUN yum -y install httpd php git
RUN git clone https://github.com/BhaleraoNiranjan/phpcalculator.git
RUN cp ./phpcalculator/index.php /var/www/html/
RUN yum remove git -y
RUN yum clean all
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
