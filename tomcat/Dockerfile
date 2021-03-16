FROM ubuntu:16.04
MAINTAINER reber <reber0ask@protonmail.com>

COPY ./src /data
WORKDIR /data

RUN apt-get update > /dev/null
RUN tar -zxvf jdk-8u281-linux-x64.tar.gz > /dev/null && mv jdk1.8.0_281 /opt
ENV JAVA_HOME /opt/jdk1.8.0_281
ENV PATH $JAVA_HOME/bin:$PATH
ENV CLASSPATH .:$JAVA_HOME/lib
RUN tar -zxvf apache-tomcat-8.0.53.tar.gz > /dev/null && mv apache-tomcat-8.0.53 /opt
RUN mv ojdbc6.jar /opt/apache-tomcat-8.0.53/lib

RUN chmod +x init.sh

WORKDIR /opt/apache-tomcat-8.0.53/webapps/ROOT

CMD ["/data/init.sh"]
