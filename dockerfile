# Use a lightweight Java runtime as the base image
FROM openjdk:17-slim

# Copy everything from your local directory to the container's root
COPY . /

# Define the command to run the server
CMD ["java", "-cp", "languagetool-server.jar", "org.languagetool.server.HTTPServer", "--port", "8081", "--public"]