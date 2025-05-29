# Use an official OpenJDK runtime as a parent image
FROM eclipse-temurin:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the jar file to the container
COPY target/*.jar app.jar

# Expose port 8080 (or whatever your app uses)
EXPOSE 8080

# Run the jar file
ENTRYPOINT ["java", "-Dserver.port=$PORT", "-jar", "app.jar"]
