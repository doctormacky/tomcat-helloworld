FROM tomcat:8.0.20-jre8
MAINTAINER liuyun105@126.com
RUN set -x \
        \
       && wget -P /usr/local/tomcat/webapps "https://tomcat.apache.org/tomcat-.0-doc/appdev/sample/sample.war"
CMD ["catalina.sh", "run"]