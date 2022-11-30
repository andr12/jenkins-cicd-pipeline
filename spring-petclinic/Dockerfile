# syntax=docker/dockerfile:1

FROM eclipse-temurin:17-jdk-jammy as build
WORKDIR /spring-petclinic
COPY . .
RUN spring-petclinic/mvnw clean install
RUN chmod +x spring-petclinic/mvnw && spring-petclinic/mvnw package

FROM eclipse-temurin:17-jre-jammy as production
EXPOSE 8080
COPY --from=build /spring-petclinic/target/spring-petclinic-*.jar /spring-petclinic.jar
CMD ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/spring-petclinic.jar"]