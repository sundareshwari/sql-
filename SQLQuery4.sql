

select 30+20;
SELECT 30 - 20;
SELECT 30 * 20;
SELECT 30 / 10;
SELECT 17 % 5;


SELECT Name,UCASE(name) AS UppercaseName
FROM employee;
SELECT UPPER('SQL Tutorial is FUN!');
SELECT LOWER('SQL Tutorial is FUN!');
SELECT SUBSTRING('SQL Tutorial', 2, 6) AS ExtractString;
SELECT STUFF('SQL Tutorial', 1, 3, 'HTML');
SELECT STR(1700);
SELECT SPACE (10);
SELECT RTRIM('SQL Tutorial    ') AS RightTrimmedString;
SELECT RIGHT('SQL Tutorial', 3) AS ExtractString;
SELECT REPLACE('SQL Tutorial', 'T', 'M');
SELECT PATINDEX('%schools%', '%%%%.W3Schools.com');
PRINT CONCAT('TEST','ERE');
SELECT 'SQL' + ' is' + ' fun!';
SELECT DATALENGTH('W3Schools.com');
SELECT DATALENGTH('2017  -08');
select * from employee where place like 'ma%';



USE AdventureWorks2008
SELECT BusinessEntityID,JobTitle title,BirthDate,MaritalStatus,gender FROM HumanResources.Employee; 
where maritalstatus like='s' order by BirthDate

select*from HumanResources.Employee;