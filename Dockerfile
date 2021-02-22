# Start with a base image containing Java runtime
FROM openjdk:8-jdk-alpine

# Add Maintainer Info
LABEL maintainer="Antonio Escobedo Martinez"

# Add a volume pointing to /tmp
VOLUME /tmp

# Make port 80 available to the world outside this container
EXPOSE 9090


# The application's jar file
ARG JAR_FILE=target/ms-aruss-evaluacion-1.0.0.jar

# Add the application's jar to the container
ADD ${JAR_FILE} ms-aruss-evaluacion.jar

# Run the jar file 
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/ms-aruss-evaluacion.jar"]