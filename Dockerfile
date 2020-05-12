FROM tomcat:8
ARG user
ARG password
ARG url
RUN curl -u $user:$password $url 
RUN cp $url /usr/local/tomcat/webapps
EXPOSE 8080
CMD ["catalina.sh" ,"run"]
