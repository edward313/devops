
FROM openjdk:12-alpine
#FROM openjdk:12-jdk-alpine

VOLUME /tmp
#WORKDIR /opt
COPY target/{JAR_NAME} app.jar
#COPY ./config.properties config.properties

ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
