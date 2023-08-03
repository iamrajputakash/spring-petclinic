# Use a base image with Java and Maven pre-installed
FROM maven:3.8.1-openjdk-11-slim AS build

# Set the working directory in the container
WORKDIR /app

# Copy the source code into the container
COPY . /app

# Build the Spring Petclinic application using Maven
RUN mvn clean package -DskipTests

# Use a lighter base image with Java only
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the built JAR file from the previous stage
COPY --from=build /app/target/spring-petclinic-*.jar /app/spring-petclinic.jar

# Expose the port on which the Spring Boot application will run
EXPOSE 8000

# Start the Spring Boot application when the container starts
CMD ["java", "-jar", "spring-petclinic.jar"]
