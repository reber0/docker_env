FROM alpine:3.1
MAINTAINER reber <reber0ask@protonmail.com>

ENV TZ=Asia/Shanghai
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories
RUN apk update
RUN apk add openrc

RUN apk add apache2
RUN apk add mysql mysql-client
RUN apk add php
RUN rm -rf /var/cache/apk/*

RUN httpd -k start

EXPOSE 80

CMD ["/bin/sh"]
