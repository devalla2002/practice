FROM tomcat:8
ARG user
ARG url
RUN curl $user $url 
RUN cp $url /usr/local/tomcat/webapps
EXPOSE 8080
CMD ["catalina.sh" ,"run"]
