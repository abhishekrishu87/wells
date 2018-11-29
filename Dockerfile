FROM jboss/wildfly
MAINTAINER ABHI@TEST.COM
ADD pavan.repo /etc/yum.repos.d/pavan.repo
RUN /opt/jboss/wildfly/bin/add-user.sh abhi abhi@123 --silent
CMD ["/opt/jboss/wildfly/bin/standalone.sh","-b","0.0.0.0","-bmanagement","0.0.0.0"]
