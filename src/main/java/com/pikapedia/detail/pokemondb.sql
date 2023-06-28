create table account(
    a_name varchar2(20 char) not null,
    a_id varchar2(20 char) primary key,
    a_pw varchar2(20 char) not null,
    a_email varchar2(50 char) not null
);
create sequence account_seq;
delete from ACCOUNT;
insert into account values ('jp', 'jp', '1004', 'does0539@naver.com');
insert into account values ('jp2', 'jp2', '1004', 'does0539@gmail.com');

select * from account;

create table pokemon(
    p_no number(5) primary key,
    p_name varchar2(20 char) not null,
    p_height number(3,1) not null,
    p_weight number(4,1) not null,
    p_type1 varchar2(20 char) not null,
    p_type2 varchar2(20 char),
    p_des varchar2(200 char) not null,
    p_front_default_img varchar2(200 char) not null,
    p_back_default_img varchar2(200 char) not null,
    p_front_shiny_img varchar2(200 char) not null,
    p_back_shiny_img varchar2(200 char) not null
);

drop table pokemon;

delete from pokemon where p_no = 1;
select * from pokemon;
select * from pokemon where p_name like '%"�̻�"%'; 
create table bookmark(
    b_no number(5) not null,
    b_id varchar2(20 char) not null
);

select * from bookmark;