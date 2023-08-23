# Use an official Maven runtime as a parent image
FROM maven:3.8.4-openjdk-17-slim as build

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Package the application
RUN mvn -f pom.xml clean package -DskipTests

# Use OpenJDK JRE base image
FROM openjdk:11-jre-slim

# Copy the JAR file from the build stage
COPY --from=build /usr/src/app/target/*.jar app.jar

# Expose port
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "app.jar"]
