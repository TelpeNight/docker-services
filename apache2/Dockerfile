FROM ubuntu:14.04
MAINTAINER telpe.nikolai@gmail.com

RUN apt-get update && apt-get install -y apache2

COPY apache-foreground.sh /apache-foreground.sh
RUN chmod +x /apache-foreground.sh

ENV APACHE_PID_FILE    /var/run/apache2.pid
ENV APACHE_RUN_DIR     /var/run/apache2
ENV APACHE_LOCK_DIR    /var/lock/apache2
ENV APACHE_LOG_DIR     /var/log/apache2

EXPOSE 80 443
CMD ["/apache-foreground.sh"]
