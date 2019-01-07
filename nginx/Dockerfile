FROM ubuntu:14.04.4
MAINTAINER reber <1070018473@qq.com>

COPY ./src /data
WORKDIR /data
RUN cp sources.list /etc/apt/sources.list && apt-get update
RUN tar -zxvf nginx-1.9.9.tar.gz && mv nginx-1.9.9 /opt
RUN rm -rf /data

RUN apt-get install -y libpcre3 libpcre3-dev zlib1g-dev libssl-dev build-essential
WORKDIR /opt/nginx-1.9.9
RUN ./configure && make && make install

WORKDIR /usr/local/nginx/html

ENTRYPOINT ["tail","-f","/dev/null"]
