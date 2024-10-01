# Use the official OpenJDK image as a base image
FROM openjdk:17-jdk-alpine
LABEL authors="selim-kose@live.com"

# Set the working directory inside the container
WORKDIR /app

# Add the Spring Boot JAR file to the container
COPY target/dockerize-0.0.1-SNAPSHOT.jar app.jar

# Expose the port that the application runs on
EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]