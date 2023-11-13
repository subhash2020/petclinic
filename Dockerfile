FROM openjdk:17
EXPOSE 8080
ARG JAR_FILE=~/spring-petclinic/target/spring-petclinic-3.1.0-SNAPSHOT.jar
ADD  ~/spring-petclinic-3.1.0-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","spring-petclinic-3.1.0-SNAPSHOT.jar"]
