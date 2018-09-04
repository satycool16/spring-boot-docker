FROM maven:3.5-jdk-8-alpine as build
ENV SAG_HOME=/usr/local/sagjain/
RUN mkdir -p $SAG_HOME
WORKDIR $SAG_HOME

ADD pom.xml $SAG_HOME
RUN ["mvn","verify","clean","--fail-never"]
ADD . $SAG_HOME
RUN mvn verify
EXPOSE 8080
CMD java -jar $SAG_HOME/target/docker-spring-boot.jar
