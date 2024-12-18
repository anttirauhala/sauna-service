FROM amazoncorretto:23-alpine-jdk
COPY target/sauna-service.jar /sauna-service.jar
EXPOSE 5002
ENTRYPOINT ["java", "-jar", "/sauna-service.jar"]