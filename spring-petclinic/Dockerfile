# syntax=docker/dockerfile:1

FROM eclipse-temurin:17-jdk-jammy as build
WORKDIR /app
COPY . .
RUN cat /app/spring-petclinic/mvnw
RUN /app/spring-petclinic/mvnw

FROM eclipse-temurin:17-jre-jammy as production
EXPOSE 8080
COPY --from=build /app/spring-petclinic/target/spring-petclinic-*.jar /spring-petclinic.jar
CMD ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/spring-petclinic.jar"]
