FROM gradle:7.4 AS build
COPY --chown=gradle:gradle . /home/gradle/src
WORKDIR /home/gradle/src
RUN gradle clean build --no-daemon

FROM openjdk:17-jdk-slim

EXPOSE 8099

RUN mkdir /app

COPY --from=build /home/gradle/src/build/libs/*.jar /app/test-application.jar

ENTRYPOINT ["java","-jar","/app/test-application.jar"]