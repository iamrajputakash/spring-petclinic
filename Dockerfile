# Use the official OpenJDK 11 LTS image as the base image
FROM openjdk:17-oracle

# Set the working directory inside the container
WORKDIR /usr/bin/

# Copy the Spring Petclinic JAR file from the host to the container's working directory
COPY /home/ubuntu/spring-petclinic/target /usr/bin/spring-petclinic.jar

# Expose port 8080 for the Spring Boot application
EXPOSE 8000

# Define the command to run the Spring Boot application
CMD ["java", "-jar", "spring-petclinic.jar"]
