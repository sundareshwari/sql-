use updateonline
create table person(uid int identity(1,1)primary key,username nvarchar(25),password nvarchar(25),address nvarchar(25),email nvarchar(25),phone nvarchar(25))
insert into person values ('kumaran','kumaran123','madurai','kumaran@gmail.com','8124747510');
insert into person values ('aravind','aravind123','madurai','aravind@gmail.com','8124747511');
insert into person values ('kutra','kutra123','madurai','kutra@gmail.com','8124747512');
insert into person values ('gangesh','gangesh123','madurai','gangesh@gmail.com','8124747513');
insert into person values ('karthik','karthik123','madurai','karthik@gmail.com','8124747514');
insert into person values ('iniya','iniya123','madurai','iniya@gmail.com','8124747515');
insert into person values ('shiva','shiva123','madurai','shiva@gmail.com','8124747516');
insert into person values ('vaishu','vishu123','madurai','vishu@gmail.com','8124747517');
insert into person values ('nivi','nivi123','madurai','nivi@gmail.com','8124747518');
select * from person
 
update person set username='admin',password='admin123',address='chennai',email='admin@123',phone='1234567890'where uid=1
truncate table person