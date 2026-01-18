# Use lightweight Java 17 runtime (recommended for Spring Boot)
FROM eclipse-temurin:17-jre-alpine

# Set working directory
WORKDIR /app

# Copy the JAR file into container
COPY RestProjectTracker-0.0.1-SNAPSHOT.jar app.jar

# Expose port (Render uses 8080 by default for Spring Boot)
EXPOSE 8080

# Run the Spring Boot application
ENTRYPOINT ["java", "-jar", "app.jar"]
