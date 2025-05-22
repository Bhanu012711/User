# Use a lightweight Java 17 runtime image
FROM eclipse-temurin:17-jdk-alpine

# Create a volume for temporary files
VOLUME /tmp

# Copy your JAR file into the container and rename it to app.jar
COPY user.jar app.jar

# Expose port 8080 (default Spring Boot port)
EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java", "-jar", "/app.jar"]
