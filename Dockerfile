FROM tomcat:8
ARG url
RUN wget --user naresh --password admin1234 $url
RUN cp *.war /usr/local/tomcat/webapps
EXPOSE 8080
CMD ["catalina.sh" ,"run"]
