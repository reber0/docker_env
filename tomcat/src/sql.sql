create tablespace test_data
datafile '/u01/app/oracle/oradata/XE/test_data.dbf'
size 64m
autoextend on
next 64m maxsize 2048m
extent management local;

create temporary tablespace test_temp
tempfile '/u01/app/oracle/oradata/XE/test_temp.dbf'
size 64m
autoextend on
next 64m maxsize 2048m
extent management local;

create user utest identified by ptest
default tablespace test_data
temporary tablespace test_temp;

grant connect,resource to utest;

conn utest/ptest@127.0.0.1/xe

create table msg(
    id int not null primary key,
    title varchar(20) not null,
    content varchar(200) not null
) tablespace test_data;

insert into msg(id,title,content) values(1,'hi','hello,world!');
insert into msg(id,title,content) values(2,'tianqi','qingtian');

create table tuser(
    id int not null primary key,
    username varchar(10) not null,
    password varchar(32) not null
) tablespace test_data;

insert into tuser(id,username,password) values(1,'xiaoming','123456');
insert into tuser(id,username,password) values(2,'xiaohong','666666');
insert into tuser(id,username,password) values(3,'admin','admin');