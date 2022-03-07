FROM tomcat:latest
RUN mkdir -p /app
EXPOSE 8443
COPY art/config.properties /app
COPY target/*.war /usr/local/tomcat/webapps
ENV JAVA_OPTS="-Dconfig.properties=/app/config.properties"
ENTRYPOINT ["/usr/local/tomcat/bin/catalina.sh","run"]
