CREATE DATABASE IF NOT EXISTS `test_db`;
use `test_db`;

create table msg(
    id int not null primary key,
    title varchar(20) not null,
    content varchar(200) not null
);

insert into msg(id,title,content) values(1,'hi','hello,world!');
insert into msg(id,title,content) values(2,'tianqi','qingtian');
