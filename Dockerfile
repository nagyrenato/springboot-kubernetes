# Base image of the Docker image (OS with preinstalled dependencies - JDK, JRE, .Net)
FROM adoptopenjdk/openjdk11:alpine
VOLUME /tmp
ARG JAR_FILE
ADD ${JAR_FILE} /app/app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app/app.jar"]