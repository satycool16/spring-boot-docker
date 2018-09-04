#Spring boot docker app
Build Docker image and run container

v1.1
docker build --build-arg url=https://github.com/satycool16/spring-boot-docker.git  --build-arg project=spring-boot-docker  --build-arg artifactid=docker-spring-boot  -t maven-and-git - < Dockerfile

docker run --name cont-maven-git -p 8080:8080 maven-and-git

v1.2
docker build -t maven-and-git .

docker run --name cont-maven-git -p 8080:8080 maven-and-git