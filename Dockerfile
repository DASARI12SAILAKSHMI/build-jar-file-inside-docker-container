# Use an appropriate base image with a JRE installed
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the local filesystem into the container at /app
COPY target/Breadcrumbsbuild-jar-file-inside-docker-container.jar /var/lib/jenkins/workspace/jar docker pipeline

# Specify the command to run your application
CMD ["java", "-jar", "your-application.jar"]
