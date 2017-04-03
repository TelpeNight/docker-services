FROM svn
MAINTAINER telpe.nikolai@gmail.com
ARG REPO_NAME
RUN svnadmin create "/var/svn/$REPO_NAME"
RUN chown -R www-data:subversion "/var/svn/$REPO_NAME"
RUN chmod -R g+rws "/var/svn/$REPO_NAME"
VOLUME "/var/svn/$REPO_NAME"
CMD /bin/true
