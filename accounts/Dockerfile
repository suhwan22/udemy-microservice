#Start with a base image containing Java runtime
FROM openjdk:17-jdk-slim

#Information around who maintains the image
MAINTAINER eazybytes.com

# Add the application's jar to the image
COPY ./build/libs/*.jar app.jar

# execute the application
ENTRYPOINT ["java", "-jar", "app.jar"]