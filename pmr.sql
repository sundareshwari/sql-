/*select*from Sales.SalesOrderDetail;

select *from HumanResources.EmployeePayHistory;
where Rate<(select AVG(Rate) from HumanResources.EmployeePayHistory );*/


select* from employee;
select*into employee_Backup from employee;

select*from emp;
merge emp_Backup as target 
using emp as source
on (target.ename=source.ename)
when matched and target.


