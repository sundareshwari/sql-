USE SundariDb
select * from Products;
select * from Products where PRICE is null;
insert into Products(PID,PNAME,PDESC,PRICE) values(7,'hema','',898);
DELETE FROM Products WHERE PID=7
select PNAME ,PDESC,PID from Products where PRICE IS NULL;
SELECT Max(Price) AS SmallestPrice
FROM Products;
SELECT COUNT(Price)
FROM Products;
SELECT AVG(Price)
FROM Products;
DELETE FROM products
WHERE pName='paper';
insert into Products(PID,PNAME,PDESC,PRICE) values(10,'divya','we','3400');
SELECT sum(price)
FROM products;
insert into Products(PID, PDESC) values(11, 'test product' );

insert into Products values (12, 'NIIT', 'COMPANY', 50000)

select * from Products where PRICE not between 0 and 5000

select * from Products where PRICE not in (100, 200, 500, 800)

select * from Products where PDESC IN ('TOYS', 'MOBILE')

SELECT SUM(PRICE) AS TOTALPRODUCTPRICE FROM PRODUCTS WHERE PDESC = 'TOYS'

UPDATE Products SET PNAME = 'TEST' where PID = 10

select pid as productid from products

select * from products where PNAME like 'P%N'