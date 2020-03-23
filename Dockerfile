FROM openjdk:8-jdk-alpine
ENV PORT 8080
EXPOSE 8080
RUN mkdir -p /opt/app
ENV PROJECT_HOME /opt/app
COPY target/helloworld-spring-boot-0.1.0.jar  $PROJECT_HOME/helloworld-spring-boot-0.1.0.jar
WORKDIR $PROJECT_HOME
CMD ["java", "-jar", "helloworld-spring-boot-0.1.0.jar"]
