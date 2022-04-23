create database quanlisinhvien;
use quanlisinhvien;
create table class(
id int not null auto_increment,
name varchar(50)
);

create table teacher(
id int,
name varchar(50),
age int,
country varchar(100)
);
select * from class;
select * from teacher;