# Use the official OpenJDK image as the base image
FROM openjdk:17-oracle

# Set the working directory inside the container
WORKDIR /app

# Copy the Spring Petclinic JAR file from the host to the container's working directory
 COPY target/spring-petclinic-3.1.0-SNAPSHOT.jar /app/spring-petclinic.jar


# Expose port 8000 for the Spring application
EXPOSE 8000

# Define the command to run the Spring Boot application
CMD ["java", "-jar", "spring-petclinic.jar","--server.port=8000"]
