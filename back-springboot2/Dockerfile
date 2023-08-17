FROM openjdk:11-slim-buster as step_01
WORKDIR /app
COPY .mvn .mvn
COPY mvnw .
COPY pom.xml .
COPY src src
RUN apt-get update && apt-get install dos2unix -y && dos2unix mvnw && chmod +x mvnw
RUN --mount=type=cache,target=/root/.m2,rw ./mvnw -Dmaven.test.skip -B package

FROM openjdk:11-jre-slim-buster
WORKDIR /app
RUN apt update && apt install curl -y
COPY --from=step_01 /app/target/api.jar .
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "api.jar"]