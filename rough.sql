select * from Products
select * from employee
select* from products where Price between 100 and 500;
insert into employee(id,name,age,place,pincode,mark) values (13,'ashok',25,'bangalore',123567,23);
select MIN(age) from employee where PINCODE like '123%';
select MIN(age) from employee
select COUNT (age)'age' from employee where PLACE='madurai';
select employee.ID,Persons.eid , EMPLOYEE.PLACE, Persons.FirstName from employee self join Persons on employee.AGE = persons.Age; 
