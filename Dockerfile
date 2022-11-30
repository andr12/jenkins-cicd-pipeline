# syntax=docker/dockerfile:1

FROM eclipse-temurin:17-jdk-jammy as build
WORKDIR /app
COPY . .
RUN mvn package

FROM eclipse-temurin:17-jre-jammy as production
EXPOSE 8080
COPY --from=build /app/target/spring-petclinic-*.jar /spring-petclinic.jar
CMD ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/spring-petclinic.jar"]