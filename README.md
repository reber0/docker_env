#docker env

### apache
环境：apache+mysql+php

apache端口：81
mysql端口：3307

用户名密码：root/root

测试注入：[http://127.0.0.1:81/index.php?id=1](http://127.0.0.1:81/index.php?id=1)

### nginx

环境：nginx+php

nginx端口：82

### tomcat
环境：tomcat+oracle+jsp

tomcat端口：8888
oracle服务端口：1521
oracle的web端口：8080

sid：xe
用户名密码：system/oracle
用户名密码：utest/ptest

测试注入：[http://127.0.0.1:8888/index.jsp?id=1](http://127.0.0.1:8888/index.jsp?id=1)
