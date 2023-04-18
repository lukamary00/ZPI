FROM maven:3.6.3-openjdk-11-slim AS build

COPY ../IdeaProjects/bee_project/pom.xml /build/
COPY ../IdeaProjects/bee_project/src /build/src/

WORKDIR /build

RUN mvn package

FROM adoptopenjdk/openjdk11:latest

WORKDIR /app

COPY --from=build /build/target/*.jar /app/spring-boot-app.jar

ENTRYPOINT ["java", "-jar","/app/spring-boot-app.jar"]
