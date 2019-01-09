FROM ubuntu:14.04
MAINTAINER reber <1070018473@qq.com>

COPY ./src /data
WORKDIR /data
RUN chmod +x init.sh
RUN cp sources.list /etc/apt/sources.list && apt-get update
RUN apt-get -y install openjdk-7-jdk
RUN tar -zxvf apache-tomcat-8.0.53.tar.gz && mv apache-tomcat-8.0.53 /opt
RUN mv ojdbc6.jar /opt/apache-tomcat-8.0.53/lib

RUN rm -rf sources.list
RUN rm -rf apache-tomcat-8.0.53.tar.gz

WORKDIR /opt/apache-tomcat-8.0.53/webapps/ROOT

CMD ["/data/init.sh"]
