FROM ubuntu:14.04
MAINTAINER reber <reber0ask@protonmail.com>

COPY ./src /data
WORKDIR /data
RUN chmod +x init.sh
RUN cp sources.list /etc/apt/sources.list && apt-get update
RUN apt-get install -y apache2
RUN apt-get install -y php5 php5-gd php5-mysql libapache2-mod-php5 libapache2-mod-auth-mysql

WORKDIR /var/www/html

CMD ["/data/init.sh"]
#ENTRYPOINT ["tail","-f","/dev/null"]
