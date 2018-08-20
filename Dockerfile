#
# JDK 8 & Maven Dockerfile
#
# https://github.com/
#

# pull base image.
FROM openjdk:8

# maintainer details
MAINTAINER Sagar Jain "satycool16@gmail.com"

# install maven
RUN apt-get install -y maven

# confirm git is installed
RUN apt-get install -y git

# attach volumes
VOLUME /volume/git

# create working directory
RUN mkdir -p /local/git
WORKDIR /local/git

# run terminal
CMD ["/bin/bash"]