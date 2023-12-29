CREATE DATABASE EmployeeDB
GO

USE EmployeeDB
GO

CREATE TABLE Department(
      DepartID INT PRIMARY KEY,
      DepartName VARCHAR(50) ) NOT NULL,
      DepartDescription VARCHAR(100) ) NOT NULL,
)

INSERT INTO Department VALUES (01, 'Finance', 'support the lives of the business')
INSERT INTO Department VALUES (02, 'Human Resource', 'responsible for finding, recruiting, screening, and training job applicants')
INSERT INTO Department VALUES (03, 'Marketing', 'promote the buying or selling of a product or service')

DROP TABLE Department,

SELECT * FROM Department,

CREATE TABLE Employee(
       EmpCode CHAR(6) PRIMARY KEY,
	   FirstName VARCHAR(30) NOT NULL,
	   LastName VARCHAR(30) NOT NULL,
	   Birthday SMALLDATETIME NOT NULL,
	   Gender BIT DEFAULT 1,
	   HomeAddress VARCHAR(100),
	   DepartID INT,
	   FOREIGN KEY (DepartID) REFERENCES Department (DepartID),
	   Salary MONEY,
)

INSERT INTO Employee VALUES (001, 'Oliver' , 'Jake', '1988-09-04', 0, 'Wall Street', '03', '1500')
INSERT INTO Employee VALUES (004, 'Amelia', 'Margaret', '1995-04-01', 1, 'Doyers Street', '01', '1700')
INSERT INTO Employee VALUES (007, 'Daniel', 'Charles', '1995-08-29', 0, 'Canal Street', '02', '1600')

DROP TABLE Employee,

SELECT * FROM Employee,

--Câu 4
UPDATE Employees 
SET Salary = Salary + (0.1 * Salary)

SELECT * FROM Employee

--Câu 5
ALTER TABLE Employee
ADD CONSTRAINT CHK_Salary_GreaterThanZero CHECK (salary > 0);

DROP TABLE Employee
SELECT * FROM Department
SELECT * From Employee