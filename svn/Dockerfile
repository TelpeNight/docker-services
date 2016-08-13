FROM apache2
MAINTAINER telpe.nikolai@gmail.com

RUN apt-get update && apt-get install -y subversion libapache2-svn
RUN mkdir /var/svn

# Set permissions
RUN addgroup subversion
RUN usermod -a -G subversion www-data
RUN chown -R www-data:subversion /var/svn
RUN chmod -R g+rws /var/svn

# Configure Apache to serve up Subversion
RUN /usr/sbin/a2enmod auth_digest
RUN rm /etc/apache2/mods-available/dav_svn.conf
ADD dav_svn.conf /etc/apache2/mods-available/dav_svn.conf
RUN ln -s /etc/apache2/mods-available/headers.load /etc/apache2/mods-enabled/headers.load
RUN echo "RequestHeader edit Destination ^https: http: early" >> /etc/apache2/apache2.conf

RUN mkdir -p /etc/subversion

ENV APACHE_RUN_USER    www-data
ENV APACHE_RUN_GROUP   www-data
