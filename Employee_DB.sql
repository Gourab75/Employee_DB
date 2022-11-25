show databases;
create database EJET;
use EJET;
Create table Employee ( Emp_ID int AUTO_INCREMENT primary key ,
Name varchar(225) ,
MobileNumber varchar(225),
Experience varchar (225)
);
INSERT INTO Employee (Name,MobileNumber,Experience) values ('Gourab','9832035519','2yr'),
('Adarsh','9835535519','4yr'),
('Sounak','9875635519','1yr');
truncate table Employee;
select * from Employee;
desc Employee;
INSERT INTO Employee (Name,MobileNumber,Experience) values ('Gourab','9832035516','2yr');
Create table EmpSalary ( Emp_ID int  ,
Salary INT ,
foreign key (Emp_ID) references Employee(Emp_ID)
);
select * from EmpSalary ;
insert into EmpSalary (Emp_ID,Salary) values (1 , 22500),
(2 , 25000),
(3 , 27000);
-- insert into EmpSalary (Emp_ID,Salary) values (4, 29500);
select * from Employee left join EmpSalary on Employee.Emp_ID = EmpSalary.Emp_ID;
select * from Employee right join EmpSalary on Employee.Emp_ID = EmpSalary.Emp_ID;
select * from Employee inner join EmpSalary on Employee.Emp_ID = EmpSalary.Emp_ID;

select count(Emp_ID) total from Employee;
select sum(Emp_ID) sum from Employee;
select sum(Salary) sum from EmpSalary;
select avg(Emp_ID) avg_Of from Employee;
select avg(Salary) sum from EmpSalary;
select min(Emp_ID) avg_Of from Employee;
select min(Salary) avg_of from EmpSalary;
select max(Emp_ID) avg_Of from Employee;

select (Name) ename from Employee order by Name desc;
select (Salary) ename from EmpSalary order by Salary asc;
select Name from Employee where Name='Gourab' group by Name ;