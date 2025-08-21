FROM openjdk:17-slim

# Copy the LanguageTool server jar and required lib folder
COPY languagetool-server.jar /languagetool-server.jar
COPY lib /lib

# Run LanguageTool server exposing port 8081 and enabling English and Spanish
CMD ["java", "-cp", "languagetool-server.jar:lib/*", "org.languagetool.server.HTTPServer", "--port", "8081", "--public", "--enable-lang", "en-US", "--enable-lang", "es-ES"]
EXPOSE 8081
