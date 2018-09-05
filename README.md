#Spring boot docker app
Build Docker image and run container

v1.1
docker build --build-arg url=https://github.com/satycool16/spring-boot-docker.git  --build-arg project=spring-boot-docker  --build-arg artifactid=docker-spring-boot  -t maven-and-git - < Dockerfile

docker run --name cont-maven-git -p 8080:8080 maven-and-git

v1.2
docker build -t maven-and-git .

docker run --name cont-maven-git -p 8080:8080 maven-and-git

v2.0
#Not using Dockerfile , running container directly from command line
docker run -it --rm --volume "$PWD"/:/usr/src/app/  --volume "$HOME"/.m2:/root/.m2 -w /usr/src/app/ maven:3.5-jdk-8-alpine mvn clean package -Dstart-class=com.sagar.docker.springbootdocker.SpringBootDockerApplication
