#This is to create a Jenkins with maven and java environment
#expose ssh , create a user called jenkins

FROM ubuntu
MAINTAINER 'Deepak Biswas'
COPY install_jenkins.sh /opt/install_jenkins.sh
RUN /bin/bash -c "sh /opt/install_jenkins.sh"
CMD /bin/bash -c "/usr/sbin/sshd && /bin/bash"
EXPOSE 8080
