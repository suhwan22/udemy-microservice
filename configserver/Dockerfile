FROM openjdk:17-jdk-slim

MAINTAINER suhwan22

COPY ./build/libs/*.jar app.jar

#RUN apt-get upgrade -y && apt-get update && apt-get install curl -y

ENTRYPOINT ["java", "-jar", "app.jar"]
