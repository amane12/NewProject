FROM tomcat:9
MAINTAINER="Shubh"
COPY "/project/app1/NewProject/target/LoginWebApp.war /usr/local/tomcat/webapps"
EXPOSE 8080
CMD ["catalina.sh","run"]