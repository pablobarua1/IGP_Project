# Use an official Tomcat image as the base image
FROM tomcat:10.1-jdk17-openjdk

# Maintainer
LABEL maintainer="pablo.barua@gmail.com"

# Add the WAR file to the Tomcat webapps directory
COPY target/ABCtechnologies-3.war  /opt/tomcat/apache-tomcat-9.0.91/webapps

# Expose the default Tomcat port
EXPOSE 8090

# Start the Tomcat server
CMD ["catalina.sh", "run"]
