FROM tomcat:9.0.58-jdk17-openjdk

RUN rm -rf /usr/local/tomcat/webapps/ROOT

COPY ./target/cinema-app-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
