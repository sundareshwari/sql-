create table  EmployeeDetails (
    EmpId	 int,
    FullName varchar(255),
    ManagerId int,
    DateOfJoining date,
    City varchar(255) 
);

create table  Employeesalary (
    EmpId	 int,
    project varchar(255),
    salary int,
    
);
insert into  Employeesalary (
    EmpId	 int,
    project varchar(255));
select* from  EmployeeDetails;
select*from Employeesalary;
SELECT COUNT(*) FROM EmployeeSalary WHERE Project = 'P1';

SELECT FullName 
FROM EmployeeDetails 
WHERE EmpId IN 
(SELECT EmpId FROM Employeesalary 
WHERE salary BETWEEN 5000 AND 10000);

SELECT Project, count(EmpId) EmpProjectCount 
FROM EmployeeSalary 
GROUP BY Project 
ORDER BY EmpProjectCount DESC

SELECT MID(FullName, 0, LOCATE(' ',FullName)) FROM EmployeeDetails;

SELECT SUBSTRING(FullName, 0, CHARINDEX(' ',FullName)) FROM EmployeeDetails;
SELECT LEFT(FullName, CHARINDEX(' ',FullName) - 3) FROM EmployeeDetails;

SELECT E.FullName, S.Salary  
FROM EmployeeDetails E LEFT JOIN EmployeeSalary S
ON E.EmpId = S.EmpId;

SELECT DISTINCT E.FullName
FROM EmployeeDetails E
INNER JOIN EmployeeDetails M
ON E.EmpID = M.ManagerID;

SELECT * FROM EmployeeDetails E 
WHERE EXISTS 
(SELECT * FROM EmployeeSalary S WHERE  E.EmpId = S.EmpId);

SELECT EmpId, Project, Salary, COUNT(*)
FROM EmployeeSalary
GROUP BY EmpId, Project, Salary
HAVING COUNT(*) > 1;

DELETE FROM EmployeeSalary  
WHERE EmpId IN (
SELECT EmpId 
FROM EmployeeSalary       
GROUP BY Project, Salary
HAVING COUNT(*) > 1));

SELECT E.EmpId, E.Project, E.Salary
FROM (
    SELECT *, Row_Number() OVER(ORDER BY EmpId) AS RowNumber
    FROM EmployeeSalary
) E
WHERE E.RowNumber % 2 = 1


SELECT E.EmpId, E.Project, E.Salary
FROM (
    SELECT *, Row_Number() OVER(ORDER BY EmpId) AS RowNumber
    FROM EmployeeSalary
) E
WHERE E.RowNumber % 2 = 0


SELECT * INTO newTable FROM EmployeeDetails;


SELECT * INTO newTable FROM EmployeeDetails WHERE 1 = 0;

CREATE TABLE newTable LIKE EmployeeDetails; 

SELECT * FROM EmployeeSalary
INTERSECT
SELECT * FROM ManagerSalary

SELECT * FROM EmployeeSalary
MINUS
SELECT * FROM ManagerSalary

SELECT NOW();
SELECT getdate();
SELECT SYSDATE FROM DUAL;

SELECT * FROM EmployeeSalary
WHERE DateOfJoining BETWEEN '01-01-2016' AND date '31-12-2016';

SELECT * FROM EmployeeSalary
WHERE YEAR(DateOfJoining) = '2016';


SELECT * FROM EmployeeSalary ORDER BY Salary DESC LIMIT N

SELECT TOP N * FROM EmployeeSalary ORDER BY Salary DESC


SELECT * FROM (SELECT * FROM EmployeeSalary ORDER BY Salary DESC)
WHERE ROWNUM <= 3;

SELECT TOP 1 Salary
FROM (
      SELECT DISTINCT TOP N Salary
      FROM Employee
      ORDER BY Salary DESC
      )
ORDER BY Salary ASC


SELECT Salary FROM Employee ORDER BY Salary DESC LIMIT N-1,1;

SELECT Salary FROM Employee ORDER BY Salary DESC LIMIT N-1,1;

SELECT Salary
FROM EmployeeSalary Emp1
WHERE 2 = (
                SELECT COUNT( DISTINCT ( Emp2.Salary ) )
                FROM EmployeeSalary Emp2
                WHERE Emp2.Salary > Emp1.Salary
            )
            
            SELECT Salary
FROM EmployeeSalary Emp1
WHERE N-1 = (
                SELECT COUNT( DISTINCT ( Emp2.Salary ) )
                FROM EmployeeSalary Emp2
                WHERE Emp2.Salary > Emp1.Salary
            )