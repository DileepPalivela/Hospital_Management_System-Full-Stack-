# Start with a Maven build container
FROM maven:3.8.7-openjdk-17-slim AS build

# Set the working directory
WORKDIR /app

# Copy the source code
COPY . .

# Package the application
RUN mvn clean package -DskipTests

# Start a new minimal JDK container
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy the jar from the builder image
COPY --from=build /app/target/*.jar app.jar

# Run the application
CMD ["java", "-jar", "app.jar"]
