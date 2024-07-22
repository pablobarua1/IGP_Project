# Use an official Tomcat image as the base image
FROM tomcat:10.1-jdk17-openjdk

# Maintainer
LABEL maintainer="pablo.barua@gmail.com"

# Add the WAR file to the Tomcat webapps directory
COPY ABCtechnologies-3.war /usr/local/tomcat/webapps/

# Expose the default Tomcat port
EXPOSE 8080

# Start the Tomcat server
CMD ["catalina.sh", "run"]
