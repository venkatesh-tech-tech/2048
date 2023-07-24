FROM amazonlinux
RUN yug update -y
RUN yum install httpd git -y
RUN git clone https://github.com/venkatesh-tech-tech/2048.git  var/www/html
EXPOSE 80
CMD ["httpd", "-D", "FOREGROUND"]
