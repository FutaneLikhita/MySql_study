##   Derived Columns
##   Distinct Columns
##   Order by Clause
##   Arithmatic Operators
##   (=,  !=,  >,  >=,  <,  <=,  <>)  Operators
##   Between ,  Not Between & And Operator 
##   Between using(  < & >  ) Operators
##   And /  Or Operators 
##   In Operator
##   Not In  Operator
##   Case Operator
##   Wild Cards  

use Hello;  

Select * from office1;
  

Select * from office1 Limit 5;             ## Limit 5 madhe te 5 paryant denar table madhun
Select * from office1 Limit 3 , 2;          ## Pn jevha 2 digit deto apn tevha te Staring che no che hatun pudhe jevdha number dila ahe te show kartat jas (3,2) yaat pahile (3) cut karun (2) nntarche 2 denar 

Select emp_name, emp_city, emp_Salary from office1 Limit 3,2;   
Select emp_name, emp_city, emp_Salary from office1;   

Select emp_name, emp_salary from office1;   

## Derived Column  

Select emp_name, emp_salary , emp_salary* 0.2 from office1;  

Select emp_name , emp_salary, emp_salary*0.2, emp_salary + emp_salary * 0.2  from office1;  

## Distinct Column

select distinct emp_dept from office1;

Select distinct emp_city ,emp_dept from office1;  

## Order By   

Select * from office1 order by emp_Salary;     ## order by nehmi last madhe yete select nntr always columns names prefer karayche
select * from office1 order by emp_city;  

Select sub_dept,emp_salary from office1 order by sub_dept ,emp_Salary;    

Select emp_dept,sub_dept from office1 order by emp_dept ,sub_dept;     


### (= ,!=, > , >=, <, <= , <> ) Operaters   

Select  * from office1  where sub_dept = 101;    
Select  * from office1 where sub_dept != 101; 

  
Select  * from office1 where sub_dept != 101 order by sub_dept;  

Select  * from office1 where sub_dept <> 101 order by sub_dept;      ## this symbol is also show the not equal to   (!= , <>)

Select  * from office1 where emp_salary <50000 order by emp_Salary;  

select * from office1 where Exp_yrs < 7;
select * from office1 where Exp_yrs <= 7;   


## Show me only Officers from the table   

Select * from office1 where emp_des = "Officer";          ## whenever we write the text code give the "" or ''  

## Between ,Not between & AND Operator

select * from office1 where emp_Salary between 30000 and 50000; 
select * from office1 where emp_Salary between 30000 and 50000 order by emp_Salary;

## Not between 

select * from office1
where emp_Salary  not between 30000 and 50000 
order by emp_Salary;  

## Greater than and less than ___Between Using (< & > ) operator
 
select * from office1
where emp_Salary>30000 and emp_Salary<50000 
order by emp_Salary; 
 
 ## And & OR Operator 
 
select * from office1 
where sub_dept between 101 And 103
order by sub_dept;   

## Questions 

## Employees in Hr and sub_dept 102  

select * from office1 
where emp_dept= "HR" and sub_dept = 102;  

## Employees in Hr and From Delhi 

Select * from office1
where emp_dept = "HR" and emp_city = "Delhi"; 

## Employees in Pune and delhi 

Select * from office1 
where emp_city = "pune" or emp_city= "Delhi"; 

## Employees in sub_dept 105 and 103 

Select * from office1 
where sub_dept = 105 or sub_dept = 103; 


## employees as manager and Officer

Select * from office1 
where emp_des = "Manager" or emp_des = "Officer";  

## Employee in kanpur and Hr 

Select * from office1
where emp_city ="Kanpur" and emp_dept = "Hr";   


## Employee in HR and sub_dept 101 and 103  

select * from office1
where emp_dept = "HR" and (sub_dept = 101 or sub_dept = 103);

## In Operator  ( Used in case of multiple or) * No such condition from multiple and 

### Employee in HR and sub_dept 102 and 105 and 106 
 
select * from office1
where sub_dept in (102, 105, 106); 

## Not in (only in OR Operator) 

select * from office1
where sub_dept  not in (102, 105, 106);  

## CASE 

### If exp is less than 5 then 20%, less than 8 then 25%, less than 10 then 30%, else 40%  

Select emp_name, emp_Salary, Exp_yrs, emp_des,
case 
when exp_yrs<=5 then (emp_salary + emp_salary*0.2)
when exp_yrs <=8 then (emp_salary + emp_salary *0.25)
when (exp_yrs <=10) then (emp_salary + emp_salary *0.30)
else (emp_salary + emp_salary *0.40)   
end as total 
from office1;  

## If they are manager then 20%  bonus
## else if they are vp then 25% bonus
##  else no %   

select emp_name ,emp_des, Emp_salary,
case
when emp_des = "Manager" then (emp_salary *0.2 + emp_salary)
when emp_des = "VP" then (emp_salary * 0.25 + emp_salary)
else emp_salary
end 
as total
from office1;   

select emp_name ,emp_des, Emp_salary
FROM office1;

## Like Operator (Wild Card)  ( % , _)  

Select * from office1 where emp_name like ("h%");     ## Starting with "H"
Select * from office1 where emp_name like ("%h");     ## Ending with "H"
Select * from office1 where emp_name like ("%h%");    ## "H" can be anywhere  (Start or Middle)



Select * from office1 where emp_name like ("h_______");  ## "H" ko milakar uske age ke letters  
Select * from office1 where emp_name like ("___h_");
Select * from office1 where emp_name like ("_h%");       ## Second letter will "H" 


Select * from office1 where emp_name like ("%ev%");  

