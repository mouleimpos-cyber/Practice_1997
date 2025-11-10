FROM jenkins/jenkins:lts
USER root
RUN apt-get update && apt-get install -y docker.io git
COPY index.html /var/jenkins_home/index.html
RUN chown jenkins:jenkins /var/jenkins_home/index.html
USER jenkins
