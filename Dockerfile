# creates a layer from the openjdk:17-alpine Docker image.
FROM openjdk:17-alpine

MAINTAINER enjizen.r@gmail.com

# cd /app
WORKDIR /app

# Refer to Maven build -> finalName
ARG JAR_FILE=target/kotlin_configuration_example-*.jar

# cp target/spring-boot-docker-0.0.1-SNAPSHOT.jar /app/spring-boot-docker.jar
COPY ${JAR_FILE} spring-boot-docker.jar

# java -jar /appconfiguration.jar
CMD ["java", "-jar", "-Xmx256M", "/app/configuration.jar"]

# Make port 8090 available to the world outside this container
EXPOSE 8006