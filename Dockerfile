#FROM adoptopenjdk/openjdk11:alpine-jre
#ADD target/taskapp.jar app.jar
#ENTRYPOINT ["java", "-jar", "app.jar"]

#*********************
#FROM openjdk:21-slim
#
#WORKDIR /app
#COPY target/taskapp.jar /app
#
#EXPOSE 8080
#
#CMD ["java", "-jar", "taskapp.jar"]
#*********************

#FROM openjdk:21-slim
#VOLUME /main-app
#WORKDIR /app
#COPY target/taskapp.jar /app
#EXPOSE 8082
#ENTRYPOINT ["java", "-jar","-Dspring.profiles.active=prod", "taskapp.jar"]

FROM openjdk:21-slim

WORKDIR /app
COPY ./target/myapptask.jar /app
EXPOSE 8083

CMD ["java", "-jar", "myapptask.jar"]
#
## Use an official OpenJDK runtime as a parent image
#FROM openjdk:11

## Set the working directory to /app
#WORKDIR /app
#
## Copy the JAR file into the container at /app
#COPY target/taskapp.jar .
#
## Make port 8080 available to the world outside this container
#EXPOSE 8082
#
## Run the JAR file
#CMD ["java", "-jar", "taskapp.jar"]



#FROM maven:4.0.0-jdk-21-slim AS build
#COPY src /home/app/src
#COPY pom.xml /home/app
#RUN mvn -f /home/app/pom.xml clean package
#
# Package stage
#
#FROM adoptopenjdk/openjdk21:alpine-jre
#COPY --from=build /home/app/target/taskapp.jar /usr/local/lib/demo.jar
#ENTRYPOINT ["java","-jar","/usr/local/lib/demo.jar"]

#
#FROM docker.elastic.co/elasticsearch/elasticsearch:8.8.1
#
#EXPOSE 9200
#
#CMD ["elasticsearch"]
