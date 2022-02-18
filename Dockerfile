FROM openjdk:11
EXPOSE 8181
ADD build/libs/TestingJenkins-0.0.1-SNAPSHOT.jar TestingJenkins-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["Java", "-jar", "/TestingJenkins-0.0.1-SNAPSHOT.jar"]