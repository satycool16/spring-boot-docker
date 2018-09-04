#Spring boot docker app
docker build --build-arg url=https://github.com/satycool16/spring-boot-docker.git  --build-arg project=spring-boot-docker  --build-arg artifactid=docker-spring-boot  -t maven-and-git - < Dockerfile

