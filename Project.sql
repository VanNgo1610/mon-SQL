--Tạo bảng Employee
CREATE TABLE Employee(
EmployeeID INT PRIMARY KEY,
EmployeeName NVARCHAR(100),
Telephone CHAR(11),
EmailAddress VARCHAR(30),
)

INSERT INTO Employee VALUES (1, 'Ngo', '0123456789', 'vanthngo.csp@gmail.com')
INSERT INTO Employee VALUES (2, 'Thuy', '0123456789', 'vanthngo.csp@gmail.com')
INSERT INTO Employee VALUES (3, 'Van', '0123456789', 'vanthngo.csp@gmail.com')

DROP TABLE Employee;

SELECT * FROM Employee;

CREATE TABLE EmployeeGroup(
GroupID INT PRIMARY KEY,
GroupName VARCHAR(30),
LeaderID INT,
ProjectID INT,
)

INSERT INTO EmployeeGroup VALUES (01, 'FPT', 2, 987)
INSERT INTO EmployeeGroup VALUES (02, 'Aptech', 3, 876)
INSERT INTO EmployeeGroup VALUES (03, 'FPTA', 1, 765)

DROP TABLE EmployeeGroup;

SELECT * FROM EmployeeGroup;

CREATE TABLE Project(
ProjectID INT PRIMARY KEY,
ProjectName VARCHAR(30),
StartDate DATETIME,
EndDate DATETIME,
Reriod INT,
Cost MONEY,
)

INSERT INTO Project VALUES (001, 'Lab1', '2023-1-3', '2023-6-6', 5, 400)
INSERT INTO Project VALUES (002, 'Lab2', '2023-2-4', '2023-9-14', 7, 600)
INSERT INTO Project VALUES (003, 'Lab3', '2023-3-5', '2023-7-20', 4, 350 )
