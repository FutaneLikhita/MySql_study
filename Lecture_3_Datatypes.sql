use First; 

sql safe_update = 1;
Create table dummy (id int, name varchar(20), Age tinyint, nw1 float, nw2 double, nw3 decimal);

Select * from dummy; 

desc dummy; 

insert into dummy values (1, "Sonam", 20, 5.11, 190.55, 123456.1234); 
insert into dummy values (2, "Rahul", 21, 6.123, 150.555, 12345.12);  

Alter table dummy modify column nw3 decimal (10,4); 

insert into dummy values (3, "Kirti", 21, 123456.78911, 123456.78911, 123456.12345); 
insert into dummy values (4, "Ram", 21, 6.123, 12345678901.12345, 12345678901.12345);   



##  Date Data Type  

Create table pat 
(pid int,
pname varchar(50),
DOB date,
DOA datetime,
height decimal(10,2));  

insert into pat values (1,"Ram","2001-07-23","2023-03-12 11:15:00",5.9); 

select * from pat;  

## using direct automation that is NOW() function it means they give current date and time at the same time 

insert into pat values (2,"Sejal","2000-04-13",now(),5.3);   

## Timestamps   

select Now();
select timestamp (now());
select current_timestamp();


