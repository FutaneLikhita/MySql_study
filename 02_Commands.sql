## DDL Commands
##      Create  -	Creates a database and a Table
##      Rename	-	Rename a table
## 		Drop	-	Drops a table from the database
##		Truncate-	Drops a table but the structure prevails
##		Alter	-	Alters a table - Adding, Dropping or Repositioning a Column using alter


##	Create Database and a table
##  Syntax	-	Create database database name
##				Create table Table_name (coll_ name datatype, col2_name datatype, .....)


Create database Hello;
use hello;
Create table mytable(id int, names char(15));
desc mytable;

## Creating anather table
## such a way it increases readability
create table newtable
(id int,
 student_names char(20),
 my_course1 char(15),
 my_duration1 int,
 my_fees int);


select * from newtable;

## Describeing a table
desc newtable;

## Renaming the table
rename table newtable to new_table1;

select * from new_table1;
desc new_table1;




##	-------ALTER--------

desc new_table1;

##	Add Column

alter table new_table1
add column age int after student_names; 

## 	Add column
alter table new_table1
add column abhi char(10) after id; 


##	Drop column
alter table new_table1
drop column abhi;


##	rename
alter table new_table1
rename column id to s_id;

show tables;

desc mytable;

##--------------DML----------


## -----------insert-----------

## inserting some entries

insert into mytable
(id, names)
 values
(1, 'Abhi'),
(2, 'rushi'),
(3, 'Sushant'),
(4, 'Seema');

insert into mytable
(id, names)
values
(null, 'Rani'),
(5, 'null'),
(6, null);

insert into mytable
(id, names)
values
(null, null);

desc new_table1;

select * 
from new_table1;


insert into new_table1 
(s_id, student_names, age, my_course1, my_duration1, my_fees)
 values 
 (1, 'Abhishek', 23, 'BA', 5, 35000),
 (null, 'Likhita', 22, 'BA', 5, 42000),
 (3, 'Anushree', 22, 'DS', 6, 45000);
 
 ## =======Update=========
update new_table1
set student_names = 'aniket'
where s_id = 3;

select * from new_table1;
## ---------Delete---------
delete from mytable
where id = 3;

delete from new_table1
where s_id is null;
##	For null we use alias 'as' becouse sql can not understand operators with null 


## ----Truncate a table-----
## truncate table table_name

truncate table new_table1;
select * from new_table1;

## ----Droping a table or a database--
##	drop table table_name    or drop database db_name

drop table new_table1;


##	Error Code: 1175. You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column.  To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect.
## 	to remove this error there are two ways
## 	First way is to type this command
set sql_safe_updates = 0;

## 2nd way
