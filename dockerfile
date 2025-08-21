# Use a lightweight Java runtime as the base image
FROM openjdk:17-slim

# Copy the server JAR and the lib directory into the container's root
COPY languagetool-server.jar /languagetool-server.jar
COPY lib /lib

# Define the command to run the server with the classpath including the lib directory
CMD ["java", "-cp", "languagetool-server.jar:lib/*", "org.languagetool.server.HTTPServer", "--port", "8081", "--public"]