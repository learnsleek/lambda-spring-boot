FROM openjdk:8-jdk-alpine

ADD target/club-0.0.1-SNAPSHOT.jar mydockerApp.jar

ENTRYPOINT ["java", "-jar", "mydockerApp.jar" ]