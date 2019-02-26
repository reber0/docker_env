CREATE DATABASE IF NOT EXISTS `rtest` DEFAULT CHARSET utf8mb4 COLLATE utf8mb4_general_ci;
use `rtest`;

create table msg(
    id int not null primary key,
    title varchar(20) not null,
    content varchar(200) not null
);

insert into msg(id,title,content) values(1,'hi','hello,world!');
insert into msg(id,title,content) values(2,'tianqi','qingtian');
