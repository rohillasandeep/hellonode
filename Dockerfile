FROM node:6.9.2
EXPOSE 8080
FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD MyCustomMavenArtifact-1.0.jar app.jar
ENV JAVA_OPTS=""
ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar
