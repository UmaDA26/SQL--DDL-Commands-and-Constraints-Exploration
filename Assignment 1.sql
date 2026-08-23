create database Employee;
use Employee;

create table Departments(
Department_id int Primary key,
Department_name varchar(100));

insert into Departments
values(1,'HR'),
(2,'Finance'),
(3,'IT');

create table Location(
Location_id int primary key,
Location_name varchar(30));

insert into Location
values(101,'chennai'),
(102,'Bangalore'),
(103,'Hyderabad');

create table Employees(
Employee_id int Primary key,
Employee_Name varchar(50),
Gender enum('M','F'),
Age int,
Hire_date date,
Designation varchar(100),
Salary decimal(10.2),
Department_id int,
Location_id int,
foreign key(Department_id) references Departments(Department_id),
foreign key(Location_id) references Location(Location_id));

insert into Employees
values(1001,'priya','F',28,'2024-01-15','engineer',50000,3,101),
(1002,'Anu','F',30,'2025-11-21','HR',45000,1,102),
(1003,'Arun','M',32,'2016-08-30','Accountant',55000,2,103);

-- DDL commands

alter table employees
add Email varchar(50),
modify Designation varchar(300),
drop column age,
rename column Hire_date to Date_of_joining;


Truncate table Employees;
Drop table Employees;
Drop database Employee;

-- constraints
Drop database if exists Employee;
create database Employee;
use Employee;

create table Departments(
Department_id int Primary key unique,
Department_name varchar(100) unique not null);

insert into Departments
values(1,'HR'),
(2,'Finance'),
(3,'IT');

select * from departments
order by Department_id;

create table Location(
Location_id int primary key auto_increment,
Location_name varchar(30) unique not null);

insert into Location(Location_name)
values('chennai'),
('Bangalore'),
('Hyderabad');
select * from Location
order by Location_id;


create table Employees(
Employee_id int Primary key auto_increment,
Employee_Name varchar(50) not null,
Gender enum('M','F'),
Age int check(Age>=18),
Hire_date date default(current_date()),
Designation varchar(100),
Salary decimal(10,2),
Department_id int,
Location_id int,
foreign key(Department_id) references Departments(Department_id),
foreign key(Location_id) references Location(Location_id));

insert into Employees(Employee_name,Gender,Age,Hire_date,Designation,Salary,Department_id,Location_id)
values('priya','F',28,'2024-01-15','engineer',50000,3,1),
('Anu','F',30,'2025-11-21','HR',45000,1,2),
('Arun','M',32,'2016-08-30','Accountant',55000,2,3);

select* from employees;

