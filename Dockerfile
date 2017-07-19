FROM tomcat:8.0.20-jre8
MAINTAINER liuyun105@126.com
RUN set -x \
        \
       && rm -rf /usr/local/tomcat/webapps/ROOT/* \
       && mkdir /usr/local/tomcat/macky \
       && apt-get install git \
       && git clone https://liuyun105%40126.com:doctormacky1@git.oschina.net/hannah/com.cloudrui.app.git "/usr/local/tomcat/macky" \
       && apt-get remove git \
       && unzip -o /usr/local/tomcat/macky/com.cloudrui.app/dist/qx-console.war -d /usr/local/tomcat/webapps/ROOT/ \
       && rm -rf /usr/local/tomcat/macky
       
CMD ["catalina.sh", "run"]