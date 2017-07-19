FROM tomcat:8.0.20-jre8
MAINTAINER liuyun105@126.com
RUN set -x \
        \
       && rm -rf /usr/local/tomcat/webapps/ROOT/* \
       && mkdir /usr/local/tomcat/macky \
       && sudo apt-get install git \
       && git clone https://liuyun105%40126.com:doctormacky1@git.oschina.net/hannah/com.cloudrui.app.git "/usr/local/tomcat/macky"
#      && wget -P /usr/local/tomcat/macky  https://tomcat.apache.org/tomcat-8.0-doc/appdev/sample/sample.war \
       && sudo apt-get remove git \
       && unzip -o /usr/local/tomcat/macky/com.cloudrui.app/dist/qx-console.war -d /usr/local/tomcat/macky \
       && rm -rf /usr/local/tomcat/macky \
       && cp -r /usr/local/tomcat/macky/* /usr/local/tomcat/webapps/ROOT/
#      && wget -P /usr/local/tomcat/webapps  "https://tomcat.apache.org/tomcat-8.0-doc/appdev/sample/sample.war"
#RUN ["rm", "-fr", "/usr/local/tomcat/webapps/ROOT"]
#COPY ./target/your-webapp-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

CMD ["catalina.sh", "run"]