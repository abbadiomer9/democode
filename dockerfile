FROM tomcat:9.0.45-jdk11-adoptopenjdk-hotspot
RUN mv webapps webapps2
RUN mv  webapps.dist/ webapps
COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml
ADD tomcat-users.xml  /usr/local/tomcat/conf/tomcat-users.xml
COPY addressbook.war /usr/local/tomcat/webapps/
EXPOSE 8080
  

