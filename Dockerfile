FROM openjdk:11.0-jdk as javabuild
WORKDIR /build/
COPY . /build/
RUN ./mvnw package

FROM openjdk:11-jdk
ARG JAR_FILE=target/*.jar
COPY --from=javabuild /build/${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
