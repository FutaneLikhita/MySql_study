create database First;

use first;

create table Students 
(id int,
name char(20),
age int,
course char(10));

show tables;

select * from students;

insert into students values(1,"Raju",23,"DA");
insert into students values(2,"aju",22,"DS");
insert into students values(3,"Rau",24," ");
insert into students values(4,"juli",21,Null);
insert into students values(5,"Rahul",Null,"SE");
insert into students values(null,null,null,null);

insert into students values
(7,"Raja", 21,"SE"),
(8,"Kaju",23,"DA");

insert into students (id, name, age) values (9,"sallu",52);


create table data_world (gender char(1), age int, hobby char(10));

insert into data_world values
("F", 20,"Cycling"),
("F", 25,"Climbing"),
("M", 22,"Cooking"),
("F", 21,"Boxing"),
("M", 28,"Gardening"); 

select * from data_world;

