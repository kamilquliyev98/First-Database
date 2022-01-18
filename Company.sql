-- DDL Operations
CREATE DATABASE Workers

USE Workers

CREATE TABLE Persons
(
	Name nvarchar(25),
	Surname nvarchar(25),
	Position nvarchar(100),
	Salary decimal(15,2)
)

-- DML Operations
INSERT INTO Persons(Name,Surname,Position,Salary)
VALUES('Kamil','Guliyev','Web Developer',4000),
('Ali','Rzayev','HR',2000),
('Mikayil','Haciyev','Muhafize',1200),
('Kamran','Semedov','SMM',1500),
('Ikram','Aliyev','Reseller',2500),
('Celal','Resulzade','Reception',1800)

Select AVG(Salary) as 'Average Salary' From Persons

Select * From Persons Where Salary > (Select AVG(Salary) From Persons)

Select MAX(Salary) as 'Maximum Salary' From Persons

Select MIN(Salary) as 'Minimum Salary' From Persons