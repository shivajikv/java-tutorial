FROM gradle:7.4-jdk17 AS build

COPY --chown=gradle:gradle . /app
WORKDIR /app
RUN gradle build --no-daemon 

FROM openjdk:17-jdk

RUN mkdir /app
COPY --from=build /app/build/libs/*.jar /app/todobackend-0.0.1-SNAPSHOT.jar

EXPOSE 8080
ENV SERVER_PORT 8080

ENTRYPOINT ["java", "-jar","app/todobackend-0.0.1-SNAPSHOT.jar"]
