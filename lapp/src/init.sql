
create table msg(
    id int not null primary key,
    title varchar(20) not null,
    content varchar(200) not null
);

insert into public.msg(id, title, content) values(1, 'hi', 'hello,world!');
insert into public.msg(id, title, content) values(2, 'tianqi', 'qingtian');

create table account(
    id int not null primary key,
    username varchar(20) not null,
    password varchar(200) not null
);
insert into public.account(id, username, password) values(1, 'root', '123456');
insert into public.account(id, username, password) values(2, 'test', 'test');
