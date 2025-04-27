# Use an official Tomcat base image
FROM tomcat:10-jdk17

# Remove default webapps (optional)
#RUN rm -rf /usr/local/tomcat/webapps/*

WORKDIR /usr/local/tomcat/webapps

# Copy your WAR file to the Tomcat webapps directory
COPY target/*.war .

# Expose port 8080
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]

