FROM adoptopenjdk/openjdk11:alpine-jre
#VOLUME /tmp
MAINTAINER haritech.com
ARG JAR_FILE=build/libs/spring-rest-sales.jar
#WORKDIR /opt/app
#COPY ${JAR_FILE} /var/lib/jenkins/workspace/spring-gradle-docker
ADD ${JAR_FILE} spring-rest-sales.jar
ENTRYPOINT ["java","-jar","spring-rest-sales.jar"]
EXPOSE 8083
#docker run -d --restart=always -p 8081:8081 harilearning1989/spring-rest-oracle-demo