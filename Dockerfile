FROM tomcat:8.0-alpine

CMD MKDIR /usr/local/tomcat/webapps/myportfolio/
ADD ./index.html /usr/local/tomcat/webapps/myportfolio/
ADD ./style.css /usr/local/tomcat/webapps/myportfolio/
ADD ./images /usr/local/tomcat/webapps/myportfolio/images/
EXPOSE 8080

CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]