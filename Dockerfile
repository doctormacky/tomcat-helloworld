FROM tomcat:8.0.20-jre8
MAINTAINER liuyun105@126.com
RUN set -x \
        \
       && rm -rf /usr/local/tomcat/webapps/ROOT/* \
       && mkdir /macky \
       && wget -p /macky "https://tomcat.apache.org/tomcat-6.0-doc/appdev/sample/sample.war" \
       && unzip sample.war \
       && rm -rf sample.war \
       && cp -r * /usr/local/tomcat/webapps/ROOT/
#      && wget -P /usr/local/tomcat/webapps  "https://tomcat.apache.org/tomcat-8.0-doc/appdev/sample/sample.war"
#RUN ["rm", "-fr", "/usr/local/tomcat/webapps/ROOT"]
#COPY ./target/your-webapp-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

CMD ["catalina.sh", "run"]